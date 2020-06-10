%query: list(i).

% mode: list[i]
list([H|Ts]) :- list(Ts).
list([]).
