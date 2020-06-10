%query: tak(i,i,i,o).
%------------------------------------------------------------------------------
%	Benchmark Program - Takeuchi 
%	Independent AND-parallel version
%
%	Copyright by Evan Tick and Manuel Hermenegildo
%	Date: December 17 1987
%
%	To test: run test/0 .  Should print "7".
%------------------------------------------------------------------------------


%:- entry(tak(g,g,g,f)).

/* if you want it to run longer, use tak(18,12,6,X). */

tak(X,Y,Z,A) :-
   X =< Y,!,
   Z = A.

tak(X,Y,Z,A) :- 
   X1 is X - 1,
   Y1 is Y - 1,
   Z1 is Z - 1,
   tak(Z1,X,Y,A3),
   tak(Y1,Z,X,A2),
   tak(X1,Y,Z,A1),
   tak(A1,A2,A3,A).

%:- noparallelize.

test :-
	tak(14,12,6,X), % takes finite amount of time, should print 7
	write(X),nl.
/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	time(_),
	tak(14,12,6,X),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(X), nl.

trace_main(Eventfile):-
	start_event_trace, 
	tak(14,12,6,X),
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



