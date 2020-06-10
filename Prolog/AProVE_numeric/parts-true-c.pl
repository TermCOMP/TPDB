%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query: parts(g,g,f).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/Parts_true.c
parts(P, Q, Ret) :- P =< 0, !, Ret is 1.
parts(P, Q, Ret) :- Q =< 0, !, Ret is 0.
parts(P, Q, Ret) :- Q > P, !, parts(P, P, Ret1), Ret is Ret1.
parts(P, Q, Ret) :- !, P1 is P - 1, parts(P1, Q, Ret1), Q2 is Q - 1, parts(P, Q2, Ret2), Ret is Ret1 + Ret2.
