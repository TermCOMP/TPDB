%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_ex1.c

test_fun(X, Y, R) :- loop(X, Y, 1).

loop(X, Y, R) :- Y > 0, R1 is R * X, Y1 is Y - 1, loop(X, Y1, R1).
loop(X, Y, R) :- Y =< 0.
