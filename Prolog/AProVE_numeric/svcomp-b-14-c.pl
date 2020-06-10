%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_b.14.c

test_fun(X, Y) :- loop1(X, Y, 0).

loop1(X, Y, C) :- X =:= Y, X > 0, loop2(X, Y, C).
loop1(X, Y, C) :- X =\= Y.
loop1(X, Y, C) :- X =< 0.

loop2(X, Y, C) :- Y > 0, X1 is X - 1, Y1 is Y - 1, C1 is C + 1, loop2(X1, Y1, C1).
loop2(X, Y, C) :- Y =< 0, loop1(X, Y, C).
