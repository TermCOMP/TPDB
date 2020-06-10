%query: analyze_all(i,o).

%------------------------------------------------------------------------------
%	Benchmark Program - Simplified Clause Annotator
%
%       by Manuel Hermenegildo, R. Warren, and M. Muthukumar
%	Date: October 1989
%
%       Query: go(N) - N times for clauses in data/1 to be repeated
%
%------------------------------------------------------------------------------

%:- module(annotate, [go/1]).
%:- entry(analyze_all(X,Y),[share([[X],[Y]]),free([Y])]).
:- op(1150,fx,[(imode),(omode)]).

analyze_all([X|Y],[X1|Y1]) :-
	analyze(X,X1),
	analyze_all(Y,Y1).
analyze_all([],[]).

analyze( Source, NewSource ) :-
	Source = clause(_X,Body),
	(	Body = true,!,
		NewSource = Source
	;
		I = [],
		G = [],
		rewrite_3(Source,New_Source,I,G,_Y),
		un_number_vars(New_Source,NewSource,others),!
	).

rewrite_3(clause(H,B),clause(H,P),I,G,Info):-
	check_if_cge(B,Result),
	(  Result = 0,
	   P = B
        ;  rewrite(clause(H,B),clause(H,P),I,G,Info)
        ).

rewrite( clause(H,B), clause(H,P),I,G,Info) :- 
	numbervars_2(H,0,Lhv),
	collect_info(B,Info,Lhv,_X,_Y),
	add_annotations(Info,P,I,G),!.

add_annotations([],[],_,_).
add_annotations([I|Is],[P|Ps],Indep,Gnd) :- !,
	add_annotations(I,P,Indep,Gnd),
	add_annotations(Is,Ps,Indep,Gnd).

add_annotations(Info,Phrase,I,G) :- !,
	para_phrase( Info,Code,Type,Vars,I,G),
	make_CGE_phrase( Type,Code,Vars,PCode,I,G),
	(	var(Code),!,
		Phrase = PCode
	;	Vars = [],!,
		Phrase = Code
	;	Phrase = (PCode,Code)
	).


collect_info( (A;B),([],sequential,(A;B)),Cin,Cout,_X) :- !,
	collect_info(A,_Y,Cin,C,_Z),
	collect_info(B,_N,C,Cout,_M).

collect_info( (A,B), and(Ia,Ib),Cin,Cout,_X) :- !,
	collect_info(A,Ia,Cin,C,_Y),
	collect_info(B,Ib,C,Cout,_Z).

collect_info(  A,(NewVars,CInfo,A),In,Out,_R) :-
	find_vars(A,NewVars,In,Out),
	(	functor(A,F,Arity),
		builtin(F/Arity),!,
		CInfo = sequential
	;	NewVars \== [],!,
		CInfo = suspect
	;	true
	),!.

para_phrase( and( X,Y ), Conjuncts, Type, BagofVars,I,G) :- !,
	para_phrase(X, Xcode, Xtype, XVars,I,G),
	para_phrase(Y, Ycode, Ytype, YVars,I,G),
	(	Xtype = sequential,!,
		make_CGE_phrase( Ytype, Ycode, YVars, CGE,I,G),
		(	var(Ycode),!,
			Conjuncts = (Xcode,CGE)
		;	YVars = [],!,
			Conjuncts = (Xcode,Ycode)
		;	Conjuncts = (Xcode,(CGE,Ycode))
		),
		BagofVars = [],
		Type  = sequential
	;	Ytype = sequential,!,
		Conjuncts = Ycode,
		BagofVars = XVars,
		Type  = Xtype
	;	Conjuncts = Ycode,
		append( XVars,YVars, BagofVars),
		Type  = Xtype
	).


para_phrase( (N,T,Term),This_term,Type,Vars,_X,_Y) :-
	(	T == sequential,!,
		Type = T,
		Vars = [],
		This_term = Term
	;	collect_vars(Term,Vs),
		Type = par,
		Vars = [((T,N,Term),Vs)]
	).


%----------------------------------------------
% Make a parallel phrase that has the general 
% form:
% 	gnd(), indep(),!, parcode; sequential
%----------------------------------------------

make_CGE_phrase( sequential,Code,_,Code,_,_) :- !.
make_CGE_phrase( _X,_Y, VarList, NewCode,I,G ) :-
	get_phrase(VarList,NewCode,I,G),!.

get_phrase( VarList, Code,I,G ) :-
	length(VarList,L),
	(	L > 1,!,
		eliminate_suspect_code(VarList,Rem,Vs,I,G),
		get_CGE_2( Vs,I,G,Code,Rem )
	;	VarList = [((_X,_Y,Code),_Z)]
	).

eliminate_suspect_code([This_goal,Last_goal], SeqCode,ParCode,_X,_Y) :- !,
	This_goal = ((suspect,FVars,_Z),_W),
	(	found(FVars,[Last_goal]),!,
		Last_goal = ((_L,_M,SeqCode),_N),
		ParCode = [This_goal]
	;	ParCode   = [This_goal,Last_goal]
	).
		
eliminate_suspect_code([This_goal|Subsequent_goals], Code,ParCode,I,G) :-
	This_goal = ((suspect,FVars,_X),_Y),
	eliminate_suspect_code(Subsequent_goals,SCode,PCode,I,G),
	(	found(FVars,PCode),!,
		get_CGE_2( PCode,I,G,Code,SCode ),
		ParCode = [This_goal]
	;	ParCode = [This_goal|PCode],
		Code    = SCode
	).

found([],_R) :- fail.
found([H|T], Next_calls) :-
	(	find_var(Next_calls,H),!
	;	found(T,Next_calls)
	).

find_var([],_R) :- fail.
find_var([(_R,NextCall)|Others],V) :-
	(	member(V,NextCall),!
	;	find_var(Others,V)
	).

%---------------------------------------------------------------

get_CGE_2([((_X,_Y,Goal),_Z)],_W,_M,Goal,Others) :- var(Others),!.
get_CGE_2([((_,_,Goal),_)],_,_,(Goal,Others),Others) :- !.

get_CGE_2( Vs,I,G, Code,Rem ) :-
	get_conds( Vs,Conds,I,G),		
	make_norml_2( Vs,Parallel),
	babel_2(Conds,Parallel,Rem,Code).

%---------------------------------------------------------------

get_conds(VARS,Y,I,G) :-
	do_intersect(VARS,GS),
	subtract(GS,G,Gnd),
	singleton(VARS,VOIDS),
	reduce_set(VARS,Gnd,VOIDS,I,RSET),
	produce_tuples(RSET,Indep),
	get_text(Gnd,Indep,Y).

%-------------------------------------------------------------------

'$simplify_unconditional_cges'(off).

babel_2( Conds,Parallel,C,Code) :-
	(   Conds = true,
	    '$simplify_unconditional_cges'(on),!,
	    Pcode = Parallel
	;
	    Pcode =..['=>',Conds,Parallel]
	),
	(
	    var(C),!,
	    Code = Pcode
	;
	    Code = (Pcode,C)
	).

%------------------------------------------------------------------

reduce_set([],_X,_Y,_Z,[]).
reduce_set([(Info,V)|Vs],Gnd,VOIDS,Indep,[(Info,Rset)|Rs]) :- !,
	reduce_set(Vs,Gnd,VOIDS,Indep,Rs),
	subtract(V,Gnd,Rg),
	subtract(Rg,VOIDS,Rv),
	subtract(Rv,Indep,Rset).

produce_tuples([],[]).
produce_tuples([(_N,V)|Vs],Tuples) :- !,
	produce_tuples(Vs,Ts),
	pair(Vs,V,Ps),
	merge(Ps,Ts,Tuples).

pair( [],_,[] ).
pair( [(_N,L)|Ls],Vs,Tuples) :-
	pair(Ls,Vs,Ps),
	tuple(L,Vs,Ts),
	merge(Ts,Ps,Tuples).

tuple([],_,[]).
tuple(_,[],[]).
tuple(List,[L|Ls],Tuples) :- !,
	tuple(List,Ls,T1),
	tuple(List,L,T2),
	merge(T1,T2,Tuples).
tuple([E|Es],L,Tuples) :-
	tuple(Es,L,T1),!,
	(	E @< L,!,
		Pair = [[E,L]]
	;	Pair = [[L,E]]
	),
	merge(Pair,T1,Tuples).

make_norml( [((_,_,T),_)],T ) :- !.
make_norml( [((_X,_Y,T),_Z)|Nxt],(T,Nc) ) :- make_norml(Nxt,Nc).

%-------------------------------------------------------------------
make_norml_2( [((_,_,T),_)],T ) :- !.
make_norml_2( [((_X,_Y,T),_Z)|Nxt],'&'(T,Nc) ) :- make_norml_2(Nxt,Nc).
%-------------------------------------------------------------------

do_intersect([],[]).
do_intersect([(_X,S1),(_Y,S2)],IS) :-	!,intersect(S1,S2,IS).
do_intersect([S1,S2|Ss],IS) :-	do_intersect([S2|Ss],IS1),
				do_intersect([S1|Ss],IS2),
				do_intersect([S1,S2],IS3),
				merge(IS1,IS2,T1),
				merge(IS3,T1,IS).

get_text([],[],true).
% :- recordz_internal(thiscge,(0,0),_).
get_text([],X,indep(X)).
% :- length(X,L),recordz_internal(thiscge,(0,L),_).
get_text(X,[],ground(X)).
% :- length(X,L),recordz_internal(thiscge,(L,0),_).
get_text(X, Y,(ground(X),(indep(Y)))).
% :-	length(X,Lx),length(Y,Ly), recordz_internal(thiscge,(Lx,Ly),_).

find_vars( T,Vars,Cin,Cout) :-
	numbervars_2(T,Cin,Cout),
	NewVars is Cout-Cin,
	length(Vars,NewVars),
	numbervars_2(Vars,Cin,_N),!.

collect_vars(X,[X]) :- var(X),!.
collect_vars('$VAR'(X),['$VAR'(X)]) :- !.
collect_vars('$VAR'(X,Y),['$VAR'(X,Y)]) :- !.
collect_vars(Term,Vars) :-
	functor(Term,_N,A),
	go_inside(A,Term,Vs),
	sort(Vs,Vars).
collect_vars(_,[]).

go_inside(0,_,[]) :- !.
go_inside(N,T,Bag) :-
	Nth is N-1,
	go_inside(Nth,T,C),
	arg(N,T,ARG),
	(	var(ARG),!,     %% = '$VAR'(_),!,
		Bag = [ARG|C]
	;	atomic(ARG),!,
		Bag = C
	;	collect_vars(ARG,Cs),
		append(Cs,C,Bag)
	).


%-------------------------------------------------------------
%   Package: basics
%   Author : by now, nobody knows
%   Updated: 7/29/85
%   Defines: the basic list processing predicates

append([], L, L).
append([H|T], L, [H|R]) :-
	append(T, L, R).

member(Element, [Element|_]).
member(Element, [_N|Rest]) :-
	member(Element, Rest).

memberchk(Element, [Element|_]) :- !.
memberchk(Element, [_N|Rest]) :-
	memberchk(Element, Rest).

subtract([], _, []).
subtract([Element|Residue], Set, Difference) :-
	memberchk(Element, Set), !,
	subtract(Residue, Set, Difference).
subtract([Element|Residue], Set, [Element|Difference]) :-
	subtract(Residue, Set, Difference).

singleton([((_,X,_),_)],X).
singleton([((_A,V,_B),_C)|Vs],X) :-
	singleton(Vs,Y),
	merge(V,Y,X).

%------------------------------------------------
% General utility predicates.
%------------------------------------------------

merge([],D,D) :- !.
merge(D,[],D) :- !.
merge([A|As],[D|Ds],[A|Bs]) :- A@<D, !, merge(As,[D|Ds],Bs).
merge([A|As],[D|Ds],[A|Bs]) :- A==D, !, merge(As,Ds,Bs).
merge(As,[D|Ds],[D|Bs]) :- merge(As,Ds,Bs).

intersect([],_,[]) :- !.
intersect(_,[],[]) :- !.
intersect([A|As],[D|Ds],Out) :- A@<D, !, intersect(As,[D|Ds],Out).
intersect([A|As],[D|Ds],[A|Out]) :- A==D, !, intersect(As,Ds,Out).
intersect(As,[_N|Ds],Out) :- intersect(As,Ds,Out).

numbervars_2(X,N,N1) :- var(X), N1 is N+1, !, X='$VAR'(N,_L).
numbervars_2(A,N,N) :- atomic(A),!.
numbervars_2('$VAR'(_,_),N,N).
numbervars_2(F,N,N1) :- numbervars_2(0,F,N,N1).

numbervars_2(I,F,N,N1) :- 
	I1 is I+1,
	arg(I1,F,X),
	numbervars_2(X,N,N0), !,
	numbervars_2(I1,F,N0,N1).
numbervars_2(_,_,N,N).

un_number_vars(clause(Head,Body), clause(H,B),X) :-
	un_number_vars_2(Head,H,X),
	un_number_vars_2(Body,B,X),!.
un_number_vars(directive(X),directive(X),_).

un_number_vars_2('$VAR'(_,X),X,others) :- !.
un_number_vars_2('$VAR'(X,_),'$VAR'(X),cge) :- !.
un_number_vars_2(X,X,_) :- atomic(X),!.
un_number_vars_2(F,F1,Y) :-
	functor(F,Func,_N),
	un_number_vars_2(0,F,List,Y),
	F1 =.. [Func|List].

un_number_vars_2(I,F,[X1|Tail],Y) :-
	I1 is I+1,
	arg(I1,F,X),
	un_number_vars_2(X,X1,Y),!,
	un_number_vars_2(I1,F,Tail,Y).
un_number_vars_2(_,_,[],_).

%------------------------------------------------------------

:- op(975,xfx,'=>').
:- op(950,xfy,'&').

check_if_cge(','(X,Y), Result) :-
	check_if_cge(X,ResultX),
	(  ResultX = 0, 
	   Result  = 0
        ;  check_if_cge(Y, ResultY),
	   Result is ResultX * ResultY
        ).
check_if_cge('=>'(_,_),0).
check_if_cge('&'(_,_),0).
check_if_cge(_,1).

%------------------------------------------------------------
% list of quintus builtins
% (anything in here will default to sequential execution)
%------------------------------------------------------------

builtin(fail/0).
builtin(false/0).
builtin(otherwise/0).
builtin(repeat/0).
builtin(true/0).
builtin(version/0).
builtin(version/1).
builtin(!/0).	

%------------------------------------------------------------
%  These are "hard" builtins. So they should not be
%  parallelized.
%------------------------------------------------------------

builtin(abolish/1).
builtin(abolish/2).
builtin(abort/0).          
builtin(assert/1).
builtin(assert/2).
builtin(asserta/1).
builtin(asserta/2).
builtin(assertz/1).
builtin(assertz/2).
builtin(bagof/3).
builtin(break/0).          
builtin(call/1).           
builtin(close/1).
builtin(compile/1).
builtin(consult/1).
builtin(debug/0).          
builtin(debugging/0).      
builtin(ensure_loaded/1).
builtin(erase/1).
builtin(fileerrors/0).     
builtin(flush_output/1).
builtin(foreign/2).
builtin(foreign/3).
builtin(foreign_file/2).
builtin(get/1).
builtin(get/2).
builtin(get0/1).
builtin(get0/2).
builtin(halt/0).
builtin(incore/1).
builtin(load_foreign_files/2).
builtin(module/1).
builtin(nofileerrors/0).    
builtin(no_style_check/1).
builtin(open/3).
builtin(open_null_stream/1).
builtin(read/1).
builtin(read/2).
builtin(recorda/3).
builtin(recorded/3).
builtin(recordz/3).
builtin(reinitialise/0).
builtin(restore/1).
builtin(restore/2).
builtin(retract/1).
builtin(retractall/1).
builtin(save/1).
builtin(save/2).
builtin(save_program/1).
builtin(see/1).
builtin(seeing/1).
builtin(seen/0).
builtin(set_input/1).
builtin(set_output/1).
builtin(setof/3).          
builtin(skip/1).
builtin(skip/2).
builtin(style_check/1).
builtin(ttyget/1).
builtin(ttyget0/1).
builtin(ttyskip/1).
builtin(unknown/2).
builtin(use_module/1).
builtin(use_module/2).
builtin('^'/2).
builtin((\+)/1).

%-----------------------------------------------------------------
% entry point for tests:
%:- noparallelize.
go(N) :- 
	prepare(N,ManyClauses),
	analyze_all(ManyClauses,Result),
	conclude(Result).

time(A) :- statistics(runtime,[_N,A]).

prepare(N,ManyClauses):- 
	data(Clauses),
	mlist(N,Clauses,ManyClauses),
	time(_N).

conclude(Result) :- 
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	length(Result,L), write('Length = '), write(L), nl.

mlist(0,_1,[]).
mlist(X,SList,LList) :-
        Y is X-1,
        mlist(Y,SList,MList),
	copy_term(SList,NewSlist),
        append(NewSlist,MList,LList).

data([clause(f(X,Z),(p(X,Y),q(Y,Z))),
	clause(f(X1,Y1,Z1),(p(X1,Y1),q(Y1,Z1))),
	clause(f(X2,Y2,Z2),(Y2 is X2+Z2,p(X2,Y2),r(Y2),q(Y2,Z2))),
	clause(f(X3,Y3,Z3),(var(X3),f(X3),q(Y3),r(X3,Y3,Z3),q(X3))),
	clause(f(X4,Y4,Z4),(r(X4,Y4),p(X4,Y4),p(W4),s(X4),q(Y4,W4,Z4)))]).
/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
        prepare(3,ManyClauses),
	time(_),
        analyze_all(ManyClauses,Result),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), nl, write_all(Result).

trace_main(Eventfile):-
        prepare(3,ManyClauses),
	start_event_trace, 
        analyze_all(ManyClauses,Result),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), nl, write_all(Result).

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

write_all([]).
write_all([X|Result]):-
	write(X),nl,
	write_all(Result).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/







































