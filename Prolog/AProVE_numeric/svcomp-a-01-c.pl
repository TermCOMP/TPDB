%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query: test_fun(g, g).

test_fun(X, Y) :- loop_outer(X, Y, 0).

loop_outer(X, Y, C) :- X > 0, Y1 is 0, loop_inner(X, Y1, C).
loop_outer(X, Y, C) :- X =< 0.

loop_inner(X, Y, C) :- Y < X, Y1 is Y + 1, C1 is C + 1, loop_inner(X, Y1, C1).
loop_inner(X, Y, C) :- Y >= X, X1 is X - 1, loop_outer(X1, Y, C).
