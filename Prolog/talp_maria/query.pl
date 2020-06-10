%query: query(i).
/*-----------------------------------------------------------------------------
	Program: simple query to a (Prolog) database
	Author:  D.H.D.Warren
	Date:    1977

	From Warren's thesis

	To test: do. (first solution) or main. (all solutions)
-----------------------------------------------------------------------------*/

%:- entry(query(Q),[free(Q)]).


query([C1,D1,C2,D2]) :- 
	density(C1,D1),
	density(C2,D2), 
	D1 > D2,
	T1 is 20*D1,
	T2 is 21*D2,
	T1 < T2.

density(C,D) :- pop(C,P), area(C,A), D is (P*100)/A.

pop(china,	8250).	area(china,	3380).
pop(india,	5863).	area(india,	1139).
pop(ussr,	2521).	area(ussr,	8708).
pop(usa,	2119).	area(usa,	3609).
pop(indonesia,	1276).	area(indonesia,	570).
pop(japan,	1097).	area(japan,	148).
pop(brazil,	1042).	area(brazil,	3288).
pop(bangladesh,	750).	area(bangladesh,55).
pop(pakistan,	682).	area(pakistan,	311).
pop(w_germany,	620).	area(w_germany,	96).
pop(nigeria,	613).	area(nigeria,	373).
pop(mexico,	581).	area(mexico,	764).
pop(uk,		559).	area(uk,	86).
pop(italy,	554).	area(italy,	116).
pop(france,	525).	area(france,	213).
pop(phillipines,415).	area(phillipines,90).
pop(thailand,	410).	area(thailand,	200).
pop(turkey,	383).	area(turkey,	296).
pop(egypt,	364).	area(egypt,	386).
pop(spain,	352).	area(spain,	190).
pop(poland,	337).	area(poland,	121).
pop(s_korea,	335).	area(s_korea,	37).
pop(iran,	320).	area(iran,	628).
pop(ethiopia,	272).	area(ethiopia,	350).
pop(argentina,	251).	area(argentina,	1080).
/*
% ---------------------------------------------------------------------
% to test:
:- noparallelize.
do :-
	write('Warren`s thesis query'), nl, nl,
	time(_),
	query(X),
	report(X,T).

main :-
	write('Warren`s thesis query'), nl, nl,
	time(_),
	bagof(X,X^query(X),L),
	time(T),
	write('All solutions: '),
	write(L),nl,
	write('Solved in '), write(T), write(' msec.'), nl.

time(T) :- statistics(runtime,[_,T|_]).

report(X,T) :-
	time(T),
	write('The solution is: '),
	write(X),nl,
	write('Solved in '), write(T), write(' msec.'), nl.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	time(_),
	query(X),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(X), nl.

trace_main(Eventfile):-
	start_event_trace, 
	query(X),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write(X),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/
