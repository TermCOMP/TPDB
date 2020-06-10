%query: log(i,o).

/* example for computing the binary logarithm */

half(0,0).
half(s(0),0).
half(s(s(X)),s(Y)) :- half(X,Y).
log(0,s(0)).
log(s(X),s(Y)) :- half(s(X),Z), log(Z,Y).
