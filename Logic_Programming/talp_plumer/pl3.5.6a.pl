%query: p(o).

% mode: p[o]
p([A]) :- l([A]).

% mode: r[o]
r(1).

% mode: l[o]
l([]).
l([H|T]) :- r(H),l(T).
