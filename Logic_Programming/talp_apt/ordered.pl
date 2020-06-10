%query: ordered(i).

% mode: ordered[i]
ordered([]).
ordered([X]).
ordered([X,Y|Xs]) :- le(X,Y), ordered([Y|Xs]).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(0, s(0)).
le(0, 0).


