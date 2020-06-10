%query: p(i).

/* example for incompleteness of our implementation */

p(X) :- q(f(Y)), p(Y).
p(g(X)) :- p(X).
q(g(Y)).
