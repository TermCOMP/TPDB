%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:f(g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_flag.c

f(X, Y) :- loop(X, Y, 1, 0).

loop(X, Y, Flag, C) :- Flag =:= 1, X < Y, Flag1 is 1, X1 is X + 1, C1 is C + 1, loop(X1, Y, Flag1, C1).
loop(X, Y, Flag, C) :- Flag =:= 1, X > Y, Flag1 is 0, X1 is X + 1, C1 is C + 1, loop(X1, Y, Flag1, C1).
loop(X, Y, Flag, C) :- Flag =\= 1.
