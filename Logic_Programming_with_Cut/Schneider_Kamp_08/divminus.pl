%query: div(i,i,o).

div(X,0,Z) :- !, fail.
div(0,Y,Z) :- !, Z=0.
div(X,Y,s(Z)) :- minus(X,Y,U), div(U,Y,Z).
minus(0,Y,0).
minus(X,0,X).
minus(s(X),s(Y),Z) :- minus(X,Y,Z).
=(X,X).
