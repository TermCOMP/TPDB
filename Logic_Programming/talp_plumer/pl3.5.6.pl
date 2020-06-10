%query: p(o).

% mode: p[o]
p(X) :- l(X), q(X).

% mode: q[o]
q([A]).

% mode: r[o]
r(1).

% mode: l[o]
l([]).
l([H|T]) :- r(H),l(T).
