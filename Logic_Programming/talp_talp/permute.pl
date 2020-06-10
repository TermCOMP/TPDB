%query: permute(i,o).
% cime2 with no result


% mode: permute[i,o]
permute([], []).
permute([X|Y], [U|V]) :- delete(U, [X|Y], W), permute(W, V).

% mode: delete[o,i,o]
delete(X, [X|Y], Y).
delete(U, [X|Y], [X|Z]) :- delete(U, Y, Z).

/*
% terminiert sowohl als auch

% mode: permute2[o,i]
permute2([], []).
permute2([X|Y], [U|V]) :- permute2(W, V), delete2(U, [X|Y], W).

% mode: delete2[i,o,i]
delete2(X, [X|Y], Y).
delete2(U, [X|Y], [X|Z]) :- delete2(U, Y, Z).

*/



