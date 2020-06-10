%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query: test_fun(g,g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_a.09_assume.c
test_fun(X, Y, Z) :- Y =< 0, !.
test_fun(X, Y, Z) :- loop(X, Y, Z).

loop(X, Y, Z) :- X < Z.
loop(X, Y, Z) :- X >= Z, loop_body(X, Y, Z).
loop_body(X, Y, Z) :- Y =< 0.
loop_body(X, Y, Z) :- Y > 0, Z1 is Z + Y, loop(X, Y, Z1).
