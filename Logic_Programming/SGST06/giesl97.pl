%query: f(i,o,o).

/* from Giesl, 1997 */

f(0,Y,0).
f(s(X),Y,Z) :- f(X,Y,U), f(U,Y,Z).
