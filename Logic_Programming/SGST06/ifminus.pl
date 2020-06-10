%query: minus(i,o,o).

/* from Arts, Giesl, 2001 */

p(0,0).
p(s(X),X).
le(0,Y,true).
le(s(X),0,false).
le(s(X),s(Y),B) :- le(X,Y,B).
minus(X,Y,Z) :- le(X,Y,B), if(B,X,Y,Z).
if(true,X,Y,0).
if(false,X,Y,s(Z)) :- p(X,X1), minus(X1,Y,Z).
