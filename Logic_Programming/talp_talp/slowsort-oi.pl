%query: slowsort(o,i).

% mode: slowsort[i,o]
slowsort(X,Y) :- perm(X,Y), sorted(Y).

% mode: sorted[i]
sorted([]).
sorted([X]).
sorted([X,Y|Z]) :- le(X,Y), sorted([Y|Z]).

% mode: perm[i,o]
perm([],[]).
perm([X,Y], [U,V]) :- delete(U, [X|Y], Z), perm(Z,V).

% mode: delete[o,i,o]
delete(X, [X|Y], Y).
delete(X, [Y|Z], W) :- delete(X,Z,W).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(0, s(X)).
le(0, 0).
