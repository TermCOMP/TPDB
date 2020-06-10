%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_b.04.c

test_fun(X, Y) :- loop(X, Y).
loop(X, Y) :- X > Y, Tmp is X, X1 is Y, Y1 is Tmp, loop(X1, Y1).
loop(X, Y) :- X =< Y.
