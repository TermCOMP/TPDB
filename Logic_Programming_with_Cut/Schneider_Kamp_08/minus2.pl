%query: m(i,i,o).
m(X,0,Z) :- !, Z=X.
m(0,Y,Z) :- !, Z=0.
m(X,Y,Z) :- p(X,A),p(Y,B),m(A,B,Z).
p(0,0).
p(s(0),0).
p(s(s(X)),s(Y)) :- p(s(X),Y).
=(X,X).
