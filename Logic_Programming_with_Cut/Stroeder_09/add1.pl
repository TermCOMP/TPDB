% Author: Thomas Stroeder
% terminating

%query: add(o,i,o).
add(X,0,Y) :- !, eq(X,Y).
add(X,Y,s(Z)) :- p(Y,P), add(X,P,Z).

p(0,0).
p(s(X),X).

eq(X,X).
