%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:my_log(g,g,f).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/LogRecursive_true.c
my_log(X, Y, Ret) :- X >= Y, Y > 1, !, X1 is X // Y, my_log(X1, Y, Ret1), Ret is 1 + Ret1.
my_log(_, _, 1).
