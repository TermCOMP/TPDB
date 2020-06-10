% Author: Thomas Stroeder
% terminating

%query: num(i).
num(0).
num(X) :- no(zero(0)), p(X,Y), num(Y).

p(0,0).
p(s(X),X).

zero(0).

no(X) :- X, !, failure(a).
no(_).

failure(b).
