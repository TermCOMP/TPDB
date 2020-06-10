%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_b.02.c

test_fun(X, Y) :- loop(X, Y, 0).
loop(X, Y, C) :- X > Y, X1 is X - 1, Y1 is Y + 1, C1 is C + 1, loop(X1, Y1, C1).
loop(X, Y, _) :- X =< Y.
