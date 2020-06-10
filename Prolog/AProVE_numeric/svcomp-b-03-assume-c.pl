%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_b.03_assume.c

test_fun(X, Y) :- X > 0, loop(X, Y).
loop(X, Y) :- X > Y, X > 0, Y1 is Y + X, loop(X, Y1).
loop(X, Y) :- X =< Y.
