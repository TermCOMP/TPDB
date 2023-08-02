% The following mode is non-terminating.
%query: p(i,i).

p(X, []) :-
    p(g(X, h(0), X), g(X, h(0), X)).
p(X, g(Y, h(0), Y)) :-
    p(X, Y).
