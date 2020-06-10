%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_b.07.c

test_fun(X, Y,Z) :- loop(X, Y, Z, 0).
loop(X, Y, Z, C) :- X > Z, Y > Z, X1 is X - 1, Y1 is Y - 1, C1 is C + 1, loop(X1, Y1, Z, C1).
loop(X, Y, Z, C) :- X =< Z.
loop(X, Y, Z, C) :- Y =< Z.
