%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_b.18.c

test_fun(X, Y) :- loop1(X, Y).

loop1(X, Y) :- X > 0, Y > 0, X > Y, loop2(X, Y).
loop1(X, Y) :- X > 0, Y > 0, X =< Y, loop3(X, Y).
loop1(X, Y) :- X >= 0.
loop1(X, Y) :- Y >= 0.

loop2(X, Y) :- X > 0, X1 is X - 1, loop2(X1, Y).
loop2(X, Y) :- X =< 0, loop1(X, Y).

loop3(X, Y) :- Y > 0, Y1 is Y - 1, loop3(X, Y1).
loop3(X, Y) :- Y =< 0, loop1(X, Y).
