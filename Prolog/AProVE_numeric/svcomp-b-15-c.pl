%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_b.15.c

test_fun(X, Y, Z) :- loop1(X, Y, Z, 0).

loop1(X, Y, Z, C) :- X =:= Y, X > Z, loop2(X, Y, Z, C).
loop1(X, Y, Z, C) :- X =\= Y.
loop1(X, Y, Z, C) :- X =< Z.

loop2(X, Y, Z, C) :- Y > Z, X1 is X - 1, Y1 is Y - 1, C1 is C + 1, loop2(X1, Y1, Z, C1).
loop2(X, Y, Z, C) :- Y =< Z, loop1(X, Y, Z, C).
