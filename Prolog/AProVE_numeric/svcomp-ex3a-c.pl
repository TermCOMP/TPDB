%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_ex3a.c

test_fun(X) :- loop(X, 0).

loop(X, C) :- X > 1, X < 100, X1 is X * X, C1 is C + 1, loop(X1, C1).
loop(X, C) :- X =< 1.
loop(X, C) :- X >= 100.
