%query: div(i,i,o).

/* from Arts, Giesl, 2001 */

le(0,Y,true).
le(s(X),0,false).
le(s(X),s(Y),B) :- le(X,Y,B).
minus(X,0,X).
minus(s(X),s(Y),Z) :- minus(X,Y,Z).
div(X,s(Y),Z) :- le(s(Y),X,B), if(B,X,s(Y),Z).
if(false,X,s(Y),0).
if(true,X,s(Y),s(Z)) :- minus(X,Y,U), div(U,s(Y),Z).
