%query: p(i).
%TWTYPES :- type p(listn).

p([X]).
p([s(s(X)),Y|Xs]) :-
        p([X,Y|Xs]),
        mult(X,Y,Z),
        p([Z|Xs]).
p([0|Xs]) :- p(Xs).

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
