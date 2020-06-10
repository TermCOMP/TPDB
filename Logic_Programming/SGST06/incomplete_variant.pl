%query: p(o).

/* easier variant of incompleteness example */

p(X) :- q(f(Y)), p(Y).
q(g(Y)).
