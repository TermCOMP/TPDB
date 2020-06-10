%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_java_AG313.c

test_fun(X, Y) :- X =\= 0, loop(X, Y, 0).

loop(X, Y, I) :- X > 0, Y > 0, I1 is I + 1, X1 is (X-1) - (Y-1), loop(X1, Y, I1).
loop(X, Y, I) :- X =< 0.
loop(X, Y, I) :- Y =< 0.
