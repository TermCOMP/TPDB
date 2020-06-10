%query: fib(i,o).
/*-----------------------------------------------------------------------------
Program: Fibonacci numbers
Author:  
Date:    

-----------------------------------------------------------------------------*/


%:- entry(fib(g,f)).

fib(0,0).
fib(1,1).
fib(M,N) :-
	M > 1, 
	M1 is M-1, 
	M2 is M-2,
	fib(M1,N1), 
	fib(M2,N2),
	N is N1+N2.
% :- noparallelize.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	time(_),
	fib(15,M),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(M), nl.

trace_main(Eventfile):-
	start_event_trace, 
	fib(15,M),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write(M),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
