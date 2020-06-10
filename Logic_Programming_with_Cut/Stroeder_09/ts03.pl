% Author: Thomas Stroeder
% terminating

%query: p(o).
p(X) :- no(letter(X)), q(X).
q(x) :- p(_).

letter(x).

no(X) :- X, !, failure(a).
no(_).

failure(b).