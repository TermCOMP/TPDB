%query: minus(i,i,o).
minus(X,Y,Z) :- f(X,0), !, Z=0.
f(X,Y) :- !, X=Y.
f(X,Y) :- f(X,Y).
=(X,X).
