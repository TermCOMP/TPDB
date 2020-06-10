% Author: Thomas Stroeder
% terminating

%query: mul(i,i,o).
mul(_,0,Z) :- !, eq(Z,0).
mul(X,Y,Z) :- p(Y,P), mul(X,P,V), add(X,V,Z).

add(X,0,Z) :- !, eq(Z,X).
add(X,Y,Z) :- p(Y,V), add(X,V,W), p(Z,W).

p(0,0).
p(s(X),X).

eq(X,X).
