%query: p(i).

/* variant of example from toplas collection
 * using cons and nil instead of [_|_] and []
 */

%TWTYPES :- type p(listn).

p(cons(X,nil)).
p(cons(s(s(X)),cons(Y,Xs))) :-
        p(cons(X,cons(Y,Xs))),
        p(cons(s(s(s(s(Y)))),Xs)).
p(cons(0,Xs)) :- p(Xs).


/*TWDESC

Contrived example

*/


/*TWTYPES

listn(nil).
listn(cons(X,Xs)) :-
        nat(X),
        listn(Xs).

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([listn,nat]).
query(p(b,b)).

*/
