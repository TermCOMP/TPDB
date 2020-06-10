%query: qs(i,o).
%
% Quick Sort : Every bodies favorite sort algorithm
%


% mode: qs[i,o]
qs([], []).
qs(cons(X, L), S) :-
        split(L, X, L1, L2),
	qs(L1, S1),
	qs(L2, S2),
	append(S1, cons(X, S2), S).

% mode: append[i,i,o]
append([], L, L).
append(cons(X, L1), L2, cons(X, L3)) :- append(L1, L2, L3).

% mode: split[i,i,o,o]
split([], X, [], []).
split(cons(X, L), Y, cons(X, L1), L2) :- less(X, Y), split(L, Y, L1, L2).
split(cons(X, L), Y, L1, cons(X, L2)) :- geq(X, Y),  split(L, Y, L1, L2).

% mode: less[i,i]
less(0, s(X)).
less(s(X), s(Y)) :- less(X, Y).

% mode: geq[i,i]
geq(X, X).
geq(s(X), 0).
geq(s(X), s(Y)) :- geq(X, Y).



