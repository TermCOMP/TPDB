%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:fact(g,f).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/TerminatorRec02_true.c
fact(X, Ret) :- X > 1, !, X1 is X - 1, fact(X1, Ret1), Ret is X * Ret1.
fact(X, Ret) :- !, Ret is 1.
