%query: shanoi(i,i,i,i,o).
/*-----------------------------------------------------------------------------
Program: Towers of Hanoi (with append)
Author:  
Date:

Notes:
1. To run:
    ?- shanoi(n,a,b,c,Moves).
2. Solution is reached as in the standard approach by intermediate movements.
   Solutions are given in the form of a list of succesive movements.
-----------------------------------------------------------------------------*/

%:- module(hanoi, [shanoi/5]).
%:- entry(shanoi(g,g,g,g,f)).


shanoi(1,A,B,C,[mv(A,C)]).
shanoi(N,A,B,C,M) :-
	N > 1,
	N1 is N - 1,
	shanoi(N1,A,C,B,M1),
	shanoi(N1,B,A,C,M2),
	append(M1,[mv(A,C)],T),
	append(T,M2,M).

append([],L,L).
append([H|L],L1,[H|R]) :-
	append(L,L1,R).

% --------------------------------------------------------------------------
%:- noparallelize.
demo:-  Size=15,
	format('Towers of Hanoi for ~w elements',[Size]),
	time(_,A), nl, nl,
	shanoi(Size,a,b,c,Sol),
	time(T,Sol),
	format('The solution is: ~w',[Sol]),nl,
	format('Solved in ~w msec.',[T]), nl.
/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	time(_),
        shanoi(9,a,b,c,Sol),
	time(T),
	write('Solution: '), write(Sol), nl,
	write('Executed in '), write(T), write(' mS.'), nl.

trace_main(Eventfile):-
	start_event_trace, 
        shanoi(9,a,b,c,Sol),
	stop_event_trace,
	write('Solution: '), write(Sol), nl,
	save_trace(Eventfile).

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/
