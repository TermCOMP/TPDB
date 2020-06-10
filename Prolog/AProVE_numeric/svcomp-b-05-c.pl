%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_b.05.c

test_fun(X, Y, Z) :- loop(X, Y, Z).
loop(X, Tmp1, Tmp2) :- X > 0, X =:= 2 * Tmp1, X1 is X - 1, loop(X1, Tmp2, Tmp2).
loop(X, Tmp1, Tmp2) :- X =< Y.
