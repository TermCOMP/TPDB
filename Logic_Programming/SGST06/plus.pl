%query: plus(i,o,o).

/* Folklore. */

plus(0,Y,Y).
plus(s(X),Y,Z) :- plus(X,s(Y),Z).
