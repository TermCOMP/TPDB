%query: append3(o,o,i).

% mode: append1[i,i,o]
append1([], X, X).
append1([X|Y], U, [X|Z]) :- append1(Y, U, Z).

% mode: append2[i,i,i]
append2([], X, X).
append2([X|Y], U, [X|Z]) :- append2(Y, U, Z).

% mode: append3[o,o,i]
append3([], X, X).
append3([X|Y], U, [X|Z]) :- append3(Y, U, Z).
