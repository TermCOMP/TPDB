%query: times(i,i,o).

/* multiplication example inspired from term rewriting */

times(X,Y,Z) :- mult(X,Y,0,Z).
mult(0,Y,0,0).
mult(s(U),Y,0,Z) :- mult(U,Y,Y,Z).
mult(X,Y,s(W),s(Z)) :- mult(X,Y,W,Z).
