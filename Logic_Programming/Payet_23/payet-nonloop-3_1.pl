% The following mode is non-terminating.
%query: p(i,i).

p(X, []) :-
    p(g([], h(0), []),
      g(g(g(X, h(0), X), h(0), g(X, h(0), X)), h(0), g(g(X, h(0), X), h(0), g(X, h(0), X)))).

p(X, g(Y, h(0), Y)) :-
    p(g(g(X, h(0), X), h(0), g(X, h(0), X)), Y).
