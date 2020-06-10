%query: investigate(i,o).

main(V1,V2) :- init(100,10,4,V1,Symbols),
               randomize(Symbols,RSymbols,21),
               investigate(RSymbols,V2).
%------------------------------------------------------------------------------
%	Benchmark Program - Browse from Gabriel Benchmarks
%
%	by Herve' Touati (after Tep Dobry)
%	Date: January 15 1987
%
%	To test: run main/0.  
%------------------------------------------------------------------------------

%:- entry(investigate(X,Y),[share([[Y]]),ground(X)]).

investigate([],_).
investigate([U|Units],Patterns) :-
	property(U,pattern,Data),
	p_investigate(Data,Patterns),
	investigate(Units,Patterns).

property([],_X,_Y) :- fail.  /* don't really need this */
property([Prop|RProps],P,Val) :-
	functor(Prop,P,_X),!,
	arg(1,Prop,Val).
property([_X|RProps],P,Val) :-
	property(RProps,P,Val).

p_investigate([],_X).
p_investigate([D|Data],Patterns) :-
	p_match(Patterns,D),
	p_investigate(Data,Patterns).

p_match([],_).
p_match([P|Patterns],D) :-
	(match(D,P), fail; true),
	p_match(Patterns, D).

match([],[]) :- !.
match([X|PRest],[Y|SRest]) :-
	var(Y),!,X = Y,
	match(PRest,SRest).
match(List,[Y|Rest]) :- 
	nonvar(Y),Y = star(X),!,
	concat(X,SRest,List),
	match(SRest,Rest).
match([X|PRest],[Y|SRest]) :-
	(atom(X) -> X = Y; match(X,Y)),
	match(PRest,SRest).

concat([],L,L).
concat([X|L1],L2,[X|L3]) :- concat(L1,L2,L3).
/*
% -------------------------------------------------------------------------
% a query:
:- noparallelize.
*/
main :-
	init(100,10,4,
		[[a,a,a,b,b,b,b,a,a,a,a,a,b,b,a,a,a],
		 [a,a,b,b,b,b,a,a,[a,a],[b,b]],
		 [a,a,a,b,[b,a],b,a,b,a]
		],
		Symbols),
	randomize(Symbols,RSymbols,21),!,
	investigate(RSymbols,
		[[star(SA),B,star(SB),B,a,star(SA),a,star(SB),star(SA)],
		 [star(SA),star(SB),star(SB),star(SA),[star(SA)],[star(SB)]],
		 [_X,_Y,star(_Z),[b,a],star(_A),_B,_C]
		]).

init(N,M,Npats,Ipats,Result) :- init(N,M,M,Npats,Ipats,Result).

init(0,_X,_Y,_Z,_W,_L) :- !.
init(N,I,M,Npats,Ipats,[Symb|Rest]) :- 
	fill(I,[],L),
	get_pats(Npats,Ipats,Ppats),
	J is M - I,
	fill(J,[pattern(Ppats)|L],Symb),
	N1 is N - 1,
	(I == 0 -> I1 is M; I1 is I - 1),
	init(N1,I1,M,Npats,Ipats,Rest).

get_pats(Npats,Ipats,Result) :- get_pats(Npats,Ipats,Result,Ipats).

get_pats(0,_X,[],_Y) :- !.
get_pats(N,[X|Xs],[X|Ys],Ipats) :-
	N1 is N - 1,
	get_pats(N1,Xs,Ys,Ipats).
get_pats(N,[],Ys,Ipats) :-
	get_pats(N,Ipats,Ys,Ipats).

fill(0,L,L) :- !.
fill(N,L,[dummy([])|Rest]) :- N1 is N - 1, fill(N1,L,Rest).

randomize([],[],_) :- !.
randomize(In,[X|Out],Rand) :-
	length(In,Lin),
	Rand1 is (Rand * 17) mod 251,
	N is Rand1 mod Lin,
	split(N,In,X,In1),
	randomize(In1,Out,Rand1).

split(0,[X|Xs],X,Xs) :- !.
split(N,[X|Xs],RemovedElt,[X|Ys]) :-
	N1 is N - 1,
	split(N1,Xs,RemovedElt,Ys).

/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	get_query(X),
	init(5,1,4,X,Symbols),
	randomize(Symbols,RSymbols,21),!,
	time(_),
	investigate(RSymbols,
		[[star(SA),B,star(SB),B,a,star(SA),a,star(SB),star(SA)],
		 [star(SA),star(SB),star(SB),star(SA),[star(SA)],[star(SB)]],
		 [_X,_Y,star(_Z),[b,a],star(_A),_B,_C]
		]),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write((SA,SB,B)), nl.

trace_main(Eventfile):-
	get_query(X),
	init(5,1,4,X,Symbols),
	randomize(Symbols,RSymbols,21),!,
	start_event_trace, 
	investigate(RSymbols,
		[[star(SA),B,star(SB),B,a,star(SA),a,star(SB),star(SA)],
		 [star(SA),star(SB),star(SB),star(SA),[star(SA)],[star(SB)]],
		 [_X,_Y,star(_Z),[b,a],star(_A),_B,_C]
		]),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write((SA,SB,B)),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).


get_query(X):-
	X = [[a,a,a,b,b,b,b,a,a,a,a,a,b,b,a,a,a],[a,a,b,b,b,b,a,a,[a,a],[b,b]],
	     [a,a,a,b,[b,a],b,a,b,a]].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/




