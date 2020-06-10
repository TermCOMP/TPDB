%query: serialize0(i,o).

%------------------------------------------------------------------------------
%	Benchmark Program - Palindrome
%
%	by D.H.D Warren
%	Date: 1977
%
%       from DhDW's thesis 
%
%	To test: run go(X,S). 
%          where X is output execution time, and S the solution for palin/1.
%------------------------------------------------------------------------------

%:- module(serialize,[serialize0/2]).
%:- entry(serialize0(g,f)).

serialize0(L,R) :-
	pairlists(L,R,A),
	arrange0(A,T),
	numbered(T,1,N).

pairlists([X|L],[Y|R],[pair(X,Y)|A]) :- pairlists(L,R,A).
pairlists([],[],[]).

arrange0([X|L],tree(T1,X,T2)) :-
	split0(L,X,L1,L2),
	arrange0(L1,T1),
	arrange0(L2,T2).
arrange0([],void).

split0([pair(X1,N1)|L],pair(X2,Y2),[pair(X1,N1)|L1],L2) :-
	X1 < X2, !,
	split0(L, pair(X2,Y2), L1,L2).
split0([pair(X1,N1)|L],pair(X2,N2),L1,L2) :-
	X1 =:= X2, N1 = N2, !,
	split0(L,pair(X2,N2),L1,L2).
split0([pair(X1,N1)|L],pair(X2,Y2),L1,[pair(X1,N1)|L2]) :-
	X1 > X2, !,
	split0(L, pair(X2,Y2), L1,L2).
split0([],_,[],[]).

numbered(tree(T1,pair(X,N1),T2),N0,N) :-
	numbered(T1,N0,N1),
	N2 is N1 + 1,
	numbered(T2,N2,N).
numbered(void,N,N).

palin("ABLE WAS I ERE I SAW ELBA").

%:- noparallelize.

% ----------------------------------------------------------------------
% to test:

go(T,S) :- time(_), palin(X), serialize0(X,S), time(T).

time(T) :- statistics(runtime,[_,T]).

/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	palin(X),
	time(_),
	serialize0(X,Y),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(Y), nl.

trace_main(Eventfile):-
	palin(X),
	start_event_trace, 
	serialize0(X,Y),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write(Y),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/
