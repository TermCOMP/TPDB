% Author: Thomas Stroeder
% terminating

%query: add(o,i,o).
add(X,0,X).
add(X,Y,s(Z)) :- no(zero(Y)), p(Y,P), add(X,P,Z).

p(0,0).
p(s(X),X).

zero(0).

no(X) :- X, !, failure(a).
no(X).

failure(b).