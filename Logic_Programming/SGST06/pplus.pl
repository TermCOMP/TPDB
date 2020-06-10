%query: plus(i,o,o).

/* plus variant using predecessor */

p(s(X),X).
plus(0,Y,Y).
plus(s(X),Y,s(Z)) :- p(s(X),U), plus(U,Y,Z).
