%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_b.11.c

test_fun(X, Y) :- loop(X, Y, 0).

loop(X, Y, C) :- X + Y > 0, loop_body(X, Y, C).
loop(X, Y, C) :- X + Y =< 0.

loop_body(X, Y, C) :- X > Y, X1 is X - 1, C1 is C + 1, loop(X1, Y, C1).
loop_body(X, Y, C) :- X =< Y, X =:= Y, X1 is X - 1, C1 is C + 1, loop(X1, Y, C1).
loop_body(X, Y, C) :- X =< 0, X =\= Y, Y1 is Y - 1, C1 is C + 1, loop(X, Y1, C1).
