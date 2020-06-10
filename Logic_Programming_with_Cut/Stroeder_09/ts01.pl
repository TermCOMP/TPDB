% Author: Thomas Stroeder
% terminating

%query: p(o).
p(X) :- q(X).
p(X) :- no(q(X)), p(X).
q(X).

no(X) :- X, !, failure(a).
no(_).

failure(b).
