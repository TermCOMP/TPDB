%query: div(i,i,o).
minus(X,Y,Z) :- X=0, !, Z=0.
minus(X,Y,Z) :- Y=0, !, Z=X.
minus(X,Y,Z) :- X=s(A), Y=s(B), minus(A,B,Z).
div(X,Y,Z) :- Y=0,!,fail.
div(X,Y,Z) :- X=0,!,Z=0.
div(X,Y,Z) :- minus(X,Y,U),div(U,Y,V),Z=s(V).
=(X,X).