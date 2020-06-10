%query: p(i).
%TWTYPES :- type p(listn).

p([X]).
p([s(s(X)),Y|Xs]) :-
        p([X,Y|Xs]),
        p([s(s(s(s(Y))))|Xs]).
p([0|Xs]) :- p(Xs).


/*TWDESC

Contrived example

*/


/*TWTYPES

listn([]).
listn([X|Xs]) :-
        nat(X),
        listn(Xs).

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([listn,nat]).
query(p(b,b)).

*/
