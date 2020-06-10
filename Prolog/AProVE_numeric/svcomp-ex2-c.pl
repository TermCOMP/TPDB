%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g,g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_ex2.c

test_fun(X, Y, Z, Flag) :- loop(X, Y, Z, 1, 0).

loop(X, Y, Z, Flag, C) :- Y < Z, Flag > 0, body(X, Y, Z, Flag, C).
loop(X, Y, Z, Flag, C) :- Y >= Z.
loop(X, Y, Z, Flag, C) :- flag =< 0.

body(X, Y, Z, Flag, C) :- Y > 0, X > 1, !, Y1 is X * Y, C1 is C + 1, loop(X, Y1, Z, Flag, C1).
body(X, Y, Z, Flag, C) :- Y > 0, X < -1, !, Y1 is (-X) * Y, C1 is C + 1, loop(X, Y1, Z, Flag, C1).
body(X, Y, Z, Flag, C) :- !, Flag1 is 0, C1 is C + 1, loop(X, Y1, Z, Flag1, C1).
