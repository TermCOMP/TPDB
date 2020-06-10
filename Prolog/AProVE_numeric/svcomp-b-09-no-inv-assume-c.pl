%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_b.09-no-inv_assume.c

test_fun(X, Y) :- X > 0, Y > 0, loop(X, Y, 0).

loop(X, Y, C) :- X =\= 0, loop_body(X, Y, C).
loop(X, Y, C) :- X =:= 0.

loop_body(X, Y, C) :- X > Y, X1 is Y, C1 is C + 1, loop(X1, Y, C1).
loop_body(X, Y, C) :- X =< Y, X1 is X - 1, C1 is C + 1, loop(X1, Y, C1).
