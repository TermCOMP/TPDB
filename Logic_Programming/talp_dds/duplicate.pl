%query: duplicate(i,o).

% mode: duplicate[i,o]
duplicate([],[]).
duplicate([X|Y],[X|[X|Z]]) :- duplicate(Y,Z).
