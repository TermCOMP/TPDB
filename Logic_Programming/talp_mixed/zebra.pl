%query: zebra(o,o,o,o,o,o,o).
/*-----------------------------------------------------------------------------
	Program: zebra puzzle
	Author:  Santos-Costa
	Date:

	This is a version of the houses (zebra) program as presented in 
	"Constraint Satisfaction in Logic Programming" 
	by Pascal Van Hentenryck.

	To run: demo.
-----------------------------------------------------------------------------*/


%:- entry(zebra(A,B,C,D,E,F,G),[share([[A],[B],[C],[D],[E],[F],[G]]),
%	                       free([A,B,C,D,E,F,G])]).

zebra(Englishman,Spaniard,Japanese,Ukrainian,Norwegian,Zebra,Water):-
	eq(Englishman,Red), 
	eq(Spaniard,Dog), 
	eq(Green,Coffee), 
	eq(Ukrainian,Tea), 
	to_the_right(Green,Ivory),
	eq(Winston,Snails), 
	eq(Kool,Yellow),
	eq(Milk,third), 
	eq(Norwegian,first),
	next_to(Fox,Chesterfield),
	next_to(Horse,Kool),
	eq(Lucky,Juice), 
	eq(Japanese,Parliament), 
	next_to(Norwegian,Blue),
	houses([Blue,Green,Red,Yellow,Ivory]),
	houses([Norwegian,Englishman,Spaniard,Japanese,Ukrainian]),
	houses([Dog,Zebra,Fox,Snails,Horse]),
	houses([Parliament,Kool,Lucky,Chesterfield,Winston]),
	houses([Milk,Juice,Water,Tea,Coffee]).

houses(Prop):- domain(Prop,[first,second,third,fourth,fifth]).

domain([],_).
domain([X|Rest],Domain):- 
	select(X,Domain,NewDomain), 
	domain(Rest,NewDomain).

select(X,[X|R],R).
select(X,[Y|R],[Y|Rest]):-
	select(X,R,Rest).

next_to(fifth,fourth).
next_to(fourth,fifth).
next_to(fourth,third).
next_to(third,fourth).
next_to(third,second).
next_to(second,third).
next_to(second,first).
next_to(first,second).

to_the_right(fifth,fourth).
to_the_right(fourth,third).
to_the_right(third,second).
to_the_right(second,first).

eq(X,X).

/*
:- noparallelize.

%----------------------------------------------------------------------------
% to run:

demo:-
	format('Zebra problem ~n~n',[]),
	time(_,E),
	zebra(E,S,J,U,N,Z,W),
	time(T,S),
	write_sol(E,S,J,U,N,Z,W),
	format('Solved in ~w msec. ~n',[T]).

time(Time,_):- statistics(runtime,[_,Time]).

write_sol(E,S,J,U,N,Z,W):-
	person(Z,E,S,J,U,N,Owner),
	person(W,E,S,J,U,N,Drinker),
	format('The Zebra is owned by the ~w. ~nThe ~w drinks water.~n', 
	[Owner, Drinker]).

person(O,O,_,_,_,_,'Englishman').
person(O,_,O,_,_,_,'Spaniard').
person(O,_,_,O,_,_,'Japanese').
person(O,_,_,_,O,_,'Ukrainian').
person(O,_,_,_,_,O,'Norwegian').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	time(_),
        zebra(E,S,J,U,N,Z,W),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
        write_sol(E,S,J,U,N,Z,W).

trace_main(Eventfile):-
	start_event_trace, 
        zebra(E,S,J,U,N,Z,W),
	stop_event_trace,
	save_trace(Eventfile),
        write_sol(E,S,J,U,N,Z,W).

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/





