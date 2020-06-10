% Author: Thomas Stroeder
% terminating

%query: less(i,o).
less(0,s(_)).
less(X,Y) :- no(zero(X)), p(X,X1), p(Y,Y1), less(X1, Y1).

p(0,0).
p(s(X),X).

zero(0).

no(X) :- X, !, failure(a).
no(_).

failure(b).
