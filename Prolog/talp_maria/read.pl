%query: parse(i,o).

%   File   : READ.PL
%   Author : D.H.D.Warren + Richard O'Keefe
%   Updated: 5 July 1984
%   Purpose: Read Prolog terms in Dec-10 syntax.
% 
%   Modified by Alan Mycroft to regularise the functor modes.
%   This is both easier to understand (there are no more '?'s),
%   and also fixes bugs concerning the curious interaction of cut with
%   the state of parameter instantiation.

%   Since this file doesn't provide "metaread", it is considerably
%   simplified.  The token list format has been changed somewhat, see
%   the comments in the RDTOK file.

%   I have added the rule X(...) -> apply(X,[...]) for Alan Mycroft.
% 
% -1

%:- entry(parse(X,Y),[share([[Y]]),free([Y]),ground([X])]).

goal :- parse([some, tokens, here], ParseTree).

%check_operator_declaration :-
%	( current_op(1200, xfx, <-) -> true
%               ;
%          op(1200, xfx, [ <- ])         % alternate implication symbol        
%        ),
%	( current_op(1000, xfy, &) -> true
%               ;
%          op(1000, xfy, [ & ])          % alternate conjunction symbol 
%        ).
%
%:- check_operator_declaration.
% 1
parse(Tokens, Answer) :-
	(   read(Tokens, 1200, Term, LeftOver), all_read(LeftOver)
	  ; syntax_error(Tokens)
	),
	!,
	Answer = Term.


%   all_read(+Tokens)
%   checks that there are no unparsed tokens left over.
% 2 & 3
all_read([]) :- !.
all_read(S) :-
	syntax_error([operator,expected,after,expression], S).


%   expect(Token, TokensIn, TokensOut)
%   reads the next token, checking that it is the one expected, and
%   giving an error message if it is not.  It is used to look for
%   right brackets of various sorts, as they're all we can be sure of.
% 4 & 5
expect(Token, [Token|Rest], Rest) :- !.
expect(Token, S0, _M) :-
	syntax_error([Token,or,operator,expected], S0).


%   I want to experiment with having the operator information held as
%   ordinary Prolog facts.  For the moment the following predicates
%   remain as interfaces to current_op.
%   prefixop(O -> Self, Rarg)
%   postfixop(O -> Larg, Self)
%   infixop(O -> Larg, Self, Rarg)

% 6 & 7
prefixop(Op, Prec, Prec) :-
	current_op(Prec, fy, Op), !.
prefixop(Op, Prec, Less) :-
	current_op(Prec, fx, Op), !,
	Less is Prec-1.

% 8 & 9
postfixop(Op, Prec, Prec) :-
	current_op(Prec, yf, Op), !.
postfixop(Op, Less, Prec) :-
	current_op(Prec, xf, Op), !, Less is Prec-1.

% 10, 11, 12
infixop(Op, Less, Prec, Less) :-
	current_op(Prec, xfx, Op), !, Less is Prec-1.
infixop(Op, Less, Prec, Prec) :-
	current_op(Prec, xfy, Op), !, Less is Prec-1.
infixop(Op, Prec, Prec, Less) :-
	current_op(Prec, yfx, Op), !, Less is Prec-1.

% 13
ambigop(F, L1, O1, R1, L2, O2) :-
	postfixop(F, L2, O2),
	infixop(F, L1, O1, R1), !.


%   read(+TokenList, +Precedence, -Term, -LeftOver)
%   parses a Token List in a context of given Precedence,
%   returning a Term and the unread Left Over tokens.

% 14 & 15

read([Token|RestTokens], Precedence, Term, LeftOver) :-
	read(Token, RestTokens, Precedence, Term, LeftOver).
read([], _X, _Y, _Z) :-
	syntax_error([expression,expected], []).


%   read(+Token, +RestTokens, +Precedence, -Term, -LeftOver)
% 16
read(var(Variable,_M), ['('|S1], Precedence, Answer, S) :- !,
	read(S1, 999, Arg1, S2),
	read_args(S2, RestArgs, S3), !,
	exprtl0(S3, apply(Variable,[Arg1|RestArgs]), Precedence, Answer, S).
% 17
read(var(Variable,_M), S0, Precedence, Answer, S) :- !,
	exprtl0(S0, Variable, Precedence, Answer, S).
% 18
read(atom(-), [integer(Integer)|S1], Precedence, Answer, S) :-
	Negative is -Integer, !,
	exprtl0(S1, Negative, Precedence, Answer, S).
% 19
read(atom(Functor), ['('|S1], Precedence, Answer, S) :- !,
	read(S1, 999, Arg1, S2),
	read_args(S2, RestArgs, S3),
	Term =.. [Functor,Arg1|RestArgs], !,
	exprtl0(S3, Term, Precedence, Answer, S).
% 20
read(atom(Functor), S0, Precedence, Answer, S) :-
	prefixop(Functor, Prec, Right), !,
	after_prefix_op(Functor, Prec, Right, S0, Precedence, Answer, S).
% 21
read(atom(Atom), S0, Precedence, Answer, S) :- !,
	exprtl0(S0, Atom, Precedence, Answer, S).
% 22
read(integer(Integer), S0, Precedence, Answer, S) :- !,
	exprtl0(S0, Integer, Precedence, Answer, S).
% 23
read('[', [']'|S1], Precedence, Answer, S) :- !,
	exprtl0(S1, [], Precedence, Answer, S).
% 24
read('[', S1, Precedence, Answer, S) :- !,
	read(S1, 999, Arg1, S2),
	read_list(S2, RestArgs, S3), !,
	exprtl0(S3, [Arg1|RestArgs], Precedence, Answer, S).
% 25
read('(', S1, Precedence, Answer, S) :- !,
	read(S1, 1200, Term, S2),
	expect(')', S2, S3), !,
	exprtl0(S3, Term, Precedence, Answer, S).
% 26
read(' (', S1, Precedence, Answer, S) :- !,
	read(S1, 1200, Term, S2),
	expect(')', S2, S3), !,
	exprtl0(S3, Term, Precedence, Answer, S).
% 27
read('{', ['}'|S1], Precedence, Answer, S) :- !,
	exprtl0(S1, '{}', Precedence, Answer, S).
% 28
read('{', S1, Precedence, Answer, S) :- !,
	read(S1, 1200, Term, S2),
	expect('}', S2, S3), !,
	exprtl0(S3, '{}'(Term), Precedence, Answer, S).
% 29
read(string(List), S0, Precedence, Answer, S) :- !,
	exprtl0(S0, List, Precedence, Answer, S).
% 30
read(Token, S0, _X, _Y, _Z) :-
	syntax_error([Token,cannot,start,an,expression], S0).


%   read_args(+Tokens, -TermList, -LeftOver)
%   parses {',' expr(999)} ')' and returns a list of terms.
% 31, 32, 33
read_args([','|S1], [Term|Rest], S) :- !,
	read(S1, 999, Term, S2), !,
	read_args(S2, Rest, S).
read_args([')'|S], [], S) :- !.
read_args(S, _X, _Y) :-
	syntax_error([', or )',expected,in,arguments], S).


%   read_list(+Tokens, -TermList, -LeftOver)
%   parses {',' expr(999)} ['|' expr(999)] ']' and returns a list of terms.
% 34, 35, 36, 37
read_list([','|S1], [Term|Rest], S) :- !,
	read(S1, 999, Term, S2), !,
	read_list(S2, Rest, S).
read_list(['|'|S1], Rest, S) :- !,
	read(S1, 999, Rest, S2), !,
	expect(']', S2, S).
read_list([']'|S], [], S) :- !.
read_list(S, _X, _Y) :-
	syntax_error([', | or ]',expected,in,list], S).


%   after_prefix_op(+Op, +Prec, +ArgPrec, +Rest, +Precedence, -Ans, -LeftOver)
% 38, 39, 40
after_prefix_op(Op, Oprec, _Aprec, S0, Precedence, _X, _Y) :-
	Precedence < Oprec, !,
	syntax_error([prefix,operator,Op,in,context,
		with,precedence,Precedence], S0).

after_prefix_op(Op, Oprec, _Aprec, S0, Precedence, Answer, S) :-
	peepop(S0, S1),
	prefix_is_atom(S1, Oprec), % can't cut but would like to
	exprtl(S1, Oprec, Op, Precedence, Answer, S).

after_prefix_op(Op, Oprec, Aprec, S1, Precedence, Answer, S) :-
	read(S1, Aprec, Arg, S2),
	Term =.. [Op,Arg], !,
	exprtl(S2, Oprec, Term, Precedence, Answer, S).


%   The next clause fixes a bug concerning "mop dop(1,2)" where
%   mop is monadic and dop dyadic with higher Prolog priority.
% 41, 42, 43, 44
peepop([atom(F),'('|S1], [atom(F),'('|S1]) :- !.
peepop([atom(F)|S1], [infixop(F,L,P,R)|S1]) :- infixop(F, L, P, R).
peepop([atom(F)|S1], [postfixop(F,L,P)|S1]) :- postfixop(F, L, P).
peepop(S0, S0).


%   prefix_is_atom(+TokenList, +Precedence)
%   is true when the right context TokenList of a prefix operator
%   of result precedence Precedence forces it to be treated as an
%   atom, e.g. (- = X), p(-), [+], and so on.
% 45
prefix_is_atom([Token|_M], Precedence) :-
	prefix_is_atom(Token, Precedence).
% 46
prefix_is_atom(infixop(_X,L,_Y,_Z), P) :- L >= P.
% 47
prefix_is_atom(postfixop(_X,L,_Y), P) :- L >= P.
% 48
prefix_is_atom(')', _).
% 49
prefix_is_atom(']', _).
% 50
prefix_is_atom('}', _).
% 51
prefix_is_atom('|', P) :- 1100 >= P.
% 52
prefix_is_atom(',', P) :- 1000 >= P.
% 53
prefix_is_atom([],  _).


%   exprtl0(+Tokens, +Term, +Prec, -Answer, -LeftOver)
%   is called by read/4 after it has read a primary (the Term).
%   It checks for following postfix or infix operators.
% 54
exprtl0([atom(F)|S1], Term, Precedence, Answer, S) :-
	ambigop(F, L1, O1, R1, L2, O2), !,
	(   exprtl([infixop(F,L1,O1,R1)|S1], 0, Term, Precedence, Answer, S)
	;   exprtl([postfixop(F,L2,O2) |S1], 0, Term, Precedence, Answer, S)
	).
% 55
exprtl0([atom(F)|S1], Term, Precedence, Answer, S) :-
	infixop(F, L1, O1, R1), !,
	exprtl([infixop(F,L1,O1,R1)|S1], 0, Term, Precedence, Answer, S).
% 56
exprtl0([atom(F)|S1], Term, Precedence, Answer, S) :-
	postfixop(F, L2, O2), !,
	exprtl([postfixop(F,L2,O2) |S1], 0, Term, Precedence, Answer, S).

% 57
exprtl0([','|S1], Term, Precedence, Answer, S) :-
	Precedence >= 1000, !,
	read(S1, 1000, Next, S2), !,
	exprtl(S2, 1000, (Term,Next), Precedence, Answer, S).

% 58
exprtl0(['|'|S1], Term, Precedence, Answer, S) :-
	Precedence >= 1100, !,
	read(S1, 1100, Next, S2), !,
	exprtl(S2, 1100, (Term;Next), Precedence, Answer, S).
% 59
exprtl0([atom(end_of_file)], '<eof>', _, [], []) :- !.
% 60
exprtl0([atom(end_of_file)], Term, _, Term, []) :- !.

% 61
exprtl0([Thing|S1], _X, _Y, _Z, _W) :-
	cant_follow_expr(Thing, Culprit), !,
	syntax_error([Culprit,follows,expression], [Thing|S1]).

% 62
exprtl0(S, Term, _, Term, S).

% 63 - 70
cant_follow_expr(atom(_),	atom).
cant_follow_expr(var(_,_),	variable).
cant_follow_expr(integer(_),	integer).
cant_follow_expr(string(_),	string).
cant_follow_expr(' (',		bracket).
cant_follow_expr('(',		bracket).
cant_follow_expr('[',		bracket).
cant_follow_expr('{',		bracket).


% 71
exprtl([infixop(F,L,O,R)|S1], C, Term, Precedence, Answer, S) :-
	Precedence >= O, C =< L, !,
	read(S1, R, Other, S2),
	Expr =.. [F,Term,Other], 
	exprtl(S2, O, Expr, Precedence, Answer, S).
% 72
exprtl([postfixop(F,L,O)|S1], C, Term, Precedence, Answer, S) :-
	Precedence >= O, C =< L, !,
	Expr =.. [F,Term],
	peepop(S1, S2),
	exprtl(S2, O, Expr, Precedence, Answer, S).
% 73
exprtl([','|S1], C, Term, Precedence, Answer, S) :-
	Precedence >= 1000, C < 1000, !,
	read(S1, 1000, Next, S2), 
	exprtl(S2, 1000, (Term,Next), Precedence, Answer, S).
% 74
exprtl(['|'|S1], C, Term, Precedence, Answer, S) :-
	Precedence >= 1100, C < 1100, !,
	read(S1, 1100, Next, S2), 
	exprtl(S2, 1100, (Term;Next), Precedence, Answer, S).
% 75
exprtl(S, _, Term, _, Term, S).


%   This business of syntax errors is tricky.  When an error is detected,
%   we have to write out a message.  We also have to note how far it was
%   to the end of the input, and for this we are obliged to use the data-
%   base.  Then we fail all the way back to read(), and that prints the
%   input list with a marker where the error was noticed.  If subgoal_of
%   were available in compiled code we could use that to find the input
%   list without hacking the data base.  The really hairy thing is that
%   the original code noted a possible error and backtracked on, so that
%   what looked at first sight like an error sometimes turned out to be
%   a wrong decision by the parser.  This version of the parser makes
%   fewer wrong decisions, and my goal was to get it to do no backtracking
%   at all.  This goal has not yet been met, and it will still occasionally
%   report an error message and then decide that it is happy with the input
%   after all.  Sorry about that.

% 76
syntax_error(Message, List) :-
	ttynl, display('**'),
	display_list(Message),
	length(List, Length),
	recorda(syntax_error, length(Length), _M), !,
	fail.
% 77
display_list([Head|Tail]) :-
	ttyput(32),
	display_token(Head), !,
	display_list(Tail).
% 78
display_list([]) :-
	ttynl.

% 79
syntax_error(List) :-
	recorded(syntax_error, length(AfterError), Ref),
	erase(Ref),
	length(List, Length),
	BeforeError is Length-AfterError,
	display_list(List, BeforeError), !.
%	fail.
% 80
display_list(X, 0) :-
	nl, 
	display('<<here>> '), !,
	nl, 
	display_list(X, 99999).
% 81
display_list([Head|Tail], BeforeError) :-
	display_token(Head),
	ttyput(32),
	Left is BeforeError-1, !,
	display_list(Tail, Left).
% 82
display_list([], _N) :-
	ttynl.

% 83
display_token(atom(X))	  :- !,	display(X).
% 84
display_token(var(_V,X))  :- !,	display(X).
% 85
display_token(integer(X)) :- !,	display(X).
% 86
display_token(string(X))  :- !,	display(X).
%87
display_token(X)	  :-	display(X).
/*
:- noparallelize.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	get_query(Q),
	time(_),
        parse(Q,ParseTree),
	time(T),
	write('Result '), write(ParseTree),nl,
	write('Executed in '), write(T), write(' mS.'), nl.

trace_main(Eventfile):-
	get_query(Q),
	start_event_trace, 
	parse(Q,ParseTree),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write(ParseTree),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).

get_query(T):- 
	T=[atom(no_trace_main),atom(':-'),atom(absolute_file_name),'(',atom('rdtok_query.pl'),',',var(_A,'InFile'),')',',',atom(open),'(',var(_A,'InFile'),',',atom(read),',',var(_B,'In'),')',',',atom(set_input),'(',var(_B,'In'),')',',',atom(time),'(',var(_F,'_'),')',',',atom(read_tokens),'(',var(_C,'TokenList'),',',var(_D,'Dict'),')',',',atom(read_main),'(',var(_C,'TokenList'),')',',',atom(time),'(',var(_E,'T'),')',',',atom(close),'(',var(_B,'In'),')',',',atom(write),'(',atom('Executed in '),')',',',atom(write),'(',var(_E,'T'),')',',',atom(write),'(',atom(' mS.'),')',',',atom(nl),',',atom(write),'(',atom('Result '),')',',',atom(write),'(',' (',var(_C,'TokenList'),',',var(_D,'Dict'),')',')',',',atom(nl)].


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





*/