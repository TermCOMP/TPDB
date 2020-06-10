%query: times(i,i,o).

/* yet another multiplication example inspired from term rewriting */

even(0,true).
even(s(0),false).
even(s(s(X)),B) :- even(X,B).
half(0,0).
half(s(s(X)),s(Y)) :- half(X,Y).
plus(0,Y,Y).
plus(s(X),Y,s(Z)) :- plus(X,Y,Z).
times(0,Y,0).
times(s(X),Y,Z) :- even(s(X),B), if(B,s(X),Y,Z).
if(true,s(X),Y,Z) :- half(s(X),X1), times(X1,Y,Y1), plus(Y1,Y1,Z).
if(false,s(X),Y,Z) :- times(X,Y,U), plus(Y,U,Z).
