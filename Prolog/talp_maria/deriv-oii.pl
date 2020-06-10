%query: deriv(o,i,i).
/*-----------------------------------------------------------------------------
Program: Symbolic differentiation
Author:  
Date:    

Notes:
1. To run:
        ?- main.

-----------------------------------------------------------------------------*/


%:- module(deriv, [main/0]).
%:- entry(d(g,g,f)).

d(U+V,X,DU+DV)			:-  !,d(U,X,DU), d(V,X,DV).
d(U-V,X,DU-DV)			:-  !,d(U,X,DU), d(V,X,DV).
d(U*V,X, DU*V+U*DV)		:-  !,d(U,X,DU), d(V,X,DV).
d(U/V,X,(DU*V-U*DV)/V^2)	:-  !,d(U,X,DU), d(V,X,DV).
d(U^N,X, DU*N*U^N1)		:-  !,integer(N), N1 is N-1, d(U,X,DU).
d(-U,X,-DU)			:-  !,d(U,X,DU).
d(exp(U),X,exp(U)*DU)		:-  !,d(U,X,DU).
d(log(U),X,DU/U)		:-  !,d(U,X,DU).
d(X,X,1) :- !.
d(C,X,0).

%:- noparallelize.

main:- expression(X), d(X, x, Y), write(Y).

expression( Exp
          + Exp
          - Exp
          * Exp
          / Exp
          * Exp
          / Exp
          ) :- value(Exp).

value(((3*x + (4*exp(x^3)*log(x^2)) -2) / ( -(3*x) + 5/(exp(x^4)+2)))).
/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main:- 
	bigexpression(X),
	time(_),
	d(X,x,Y),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(Y), nl.

trace_main(Eventfile):-
	bigexpression(X),
	start_event_trace, 
	d(X,x,Y),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write(Y),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).

bigexpression(Exp+Exp-Exp*Exp/Exp*Exp/Exp) :-
        expression(Exp).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/
