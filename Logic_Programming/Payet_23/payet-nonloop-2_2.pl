% The following mode is non-terminating.
%query: p(i,i,i,i).

p(s(_), X, [0], Y) :-
    p(s(0), g([0], [0]), X, Y).

p(Z, X, g(Y, Y), s(_)) :-
    p(Z, X, Y, s(s(0))).
