%query: der(i,o).
%TWTYPES :- type der(dt,exp).

der(d(e(t)), const(1)).
der(d(e(const(A))),  const(0)).

der(d(e(X+Y)), DX+DY) :-
   der(d(e(X)),DX), der(d(e(Y)),DY).
der(d(e(X*Y)), X*DY + Y*DX) :-
   der(d(e(X)),DX), der(d(e(Y)),DY).
der(d(d(X)),DDX) :-
   der(d(X),DX), der(d(e(DX)),DDX).






/*TWDESC

  computes the repeated differentiation of a function.

*/

/*TWTYPES

dt(d(X)) :- dt(X).
dt(e(X)) :- exp(X).

exp(t).
exp(const(X)) :-
	int(X).
exp(A+B) :-
	exp(A),
	exp(B).
exp(A*B) :-
	exp(A),
	exp(B).

int(0).
int(1).
int(2).

*/



/*TWDEMO

selected_norms([dt,exp]).
*/
/*.

*/

