%query: p(i).

/* variant of example from toplas collection
 * using cons and nil instead of [_|_] and []
 */

%TWTYPES :- type p(listn).

p(cons(X,nil)).
p(cons(s(s(X)),cons(Y,Xs))) :-
        p(cons(X,cons(Y,Xs))),
        mult(X,Y,Z),
        p(cons(Z,Xs)).
p(cons(0,Xs)) :- p(Xs).

%TWTYPES     :- type sum(nat,nat,nat).

sum(X, 0, X).
sum(X, s(Y), s(Z)) :- sum(X, Y, Z).

%TWTYPES     :- type mult(nat,nat,nat).

mult(_, 0, 0).
mult(X, s(Y), Z) :- mult(X, Y, W), sum(W, X, Z).

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
