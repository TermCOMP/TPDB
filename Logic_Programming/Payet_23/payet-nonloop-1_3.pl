% The following mode is non-terminating.
%query: p(i,i).

p(X, []) :-
    p(g(X, h(1), X), g(X, h(2), X)).
p(X, g(Y, h(0), Y)) :-
    p(X, Y).

p(Y, g(X, h(2), X)) :-
    p(Y, g(X, h(0), X)).
p(g(X, h(1), X), Y) :-
    p(g(X, h(0), X), Y).
