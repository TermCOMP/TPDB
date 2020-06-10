%query: tc(i,o).

% terminiert:

% mode: p[i,o]
p(a, b).
p(b, c).

% mode: tc[i,o]
tc(X, X).
tc(X, Y) :- p(X, Z), tc(Z, Y).


% transitive closure of a relation p (Krishna Rao et al.)

