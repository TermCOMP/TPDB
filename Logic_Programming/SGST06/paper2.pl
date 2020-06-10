%query: p(i,o).

/* example 3 from Schneider-Kamp, Giesl, Serebrenik, Thiemann, 2006 */

p(X,X).
p(f(X),g(Y)) :- p(f(X),f(Z)), p(Z,g(W)).
