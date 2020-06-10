%query: qsort(i,o).
%------------------------------------------------------------------------------
%	Benchmark Program - quicksort (using append)
%
%	Author: Manuel Hermenegildo
%	Date: December 20 1987
%
%	To test: run main/1.  
%------------------------------------------------------------------------------


%:- module( sort,[qsort/2]).
%:- entry(qsort(As,Bs),[free(Bs),ground(As)]).

qsort([X|L],R) :-
	partition(L,X,L1,L2),
	qsort(L2,R2),
        qsort(L1,R1), 
        append(R1,[X|R2],R).
qsort([],[]).

partition([],_,[],[]).
partition([E|R],C,[E|Left1],Right):- E < C, !,
	partition(R,C,Left1,Right).
partition([E|R],C,Left,[E|Right1]):-
	partition(R,C,Left,Right1).

append([],X,X).
append([H|X],Y,[H|Z]):- append(X,Y,Z).
/*
:- noparallelize.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	prepare(5,L,0),
	time(_),
        qsort(L,Sol),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(Sol), nl.

trace_main(Eventfile):-
	prepare(5,L,0),
	start_event_trace, 
        qsort(L,Sol),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write(Sol), nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).

prepare(N,LList,0) :- 
	list50(SList),
	mlist(N,SList,LList).

list50([27,74,17,33,94,18,46,83,65,2,
	32,53,28,85,99,47,28,82,6,11,
	55,29,39,81,90,37,10,0,66,51,
	7,21,85,27,31,63,75,4,95,99,
	11,28,61,74,18,92,40,53,59,8]).

append0([],X,X).
append0([H|X],Y,[H|Z]):- append0(X,Y,Z).

mlist(0,_,[]).
mlist(X,SList,LList) :- 
	Y is X-1,
	mlist(Y,SList,MList),
	append0(SList,MList,LList).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


*/
