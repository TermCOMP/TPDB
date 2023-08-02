% The following mode is non-terminating.
%query: p(i,i).

p(X, [0]) :-
    p(g([0],[0]), X).
p(X, g(Y,Y)) :-
    p(X, Y).
