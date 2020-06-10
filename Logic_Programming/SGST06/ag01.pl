%query: h(i).

/* T. Arts and J. Giesl
 * A Collection of Examples for Termination of Term Rewriting Using Dependency Pairs
 * Technical Report AIB-2001-09, RWTH Aachen, Germany.
 */

f(c(s(X),Y)) :- f(c(X,s(Y))).
g(c(X,s(Y))) :- g(c(s(X),Y)).

h(X) :- f(X),g(X).
