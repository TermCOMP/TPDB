%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:my_le(g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/LeUserDefRec_true.c
my_le(X, Y) :- X > 0, Y > 0, !, X1 is X - 1, Y1 is Y - 1, my_le(X1, Y1).
my_le(X, Y) :- !, 0 is X.
