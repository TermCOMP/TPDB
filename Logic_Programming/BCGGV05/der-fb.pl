%query: p(o,i).
%TWTYPES  :- type p(dt,exp).

p(d(e(t)), const(1)).

p(d(e(const(A))),  const(0)).

p(d(e(X+Y)), DX+DY) :-
        p(d(e(X)),DX), p(d(e(Y)),DY).

p(d(e(X*Y)), X*DY + Y*DX) :-
         p(d(e(X)),DX), p(d(e(Y)),DY).

p(d(d(X)),DDX) :-
        p(d(X),DX), p(d(e(DX)),DDX).


/*TWDESC

Contrived example

*/


/*TWTYPES
dt(d(X)) :- dt(X).
dt(e(X)) :- exp(X).

exp(t).
exp(const(X)) :- num(X).
exp(+(X,Y)) :- exp(X), exp(Y).
exp(*(X,Y)) :- exp(X), exp(Y).

num(0).
num(1).


*/


/*TWDEMO

selected_norms([dt,exp,num]).
query(p(b,b,f,f,f)).

*/

