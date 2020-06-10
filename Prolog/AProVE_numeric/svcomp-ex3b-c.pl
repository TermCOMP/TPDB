%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_ex3b.c

test_fun(X, Y) :- loop(X, Y, 0).

loop(X, Y, C) :- X > 1, X < Y, X1 is X * X, C1 is C + 1, loop(X1, C1).
loop(X, Y, C) :- X =< 1.
loop(X, Y, C) :- X >= 100.
