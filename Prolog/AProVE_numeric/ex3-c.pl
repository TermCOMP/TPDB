%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:rec1(g,f).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/ex3.c

rec1(I, Ret) :- I =< 0, !, Ret is 0.
rec1(I, Ret) :- !, I1 is I - 2, rec1(I1, Ret1), I2 is Ret1 - 1, rec1(I2, Ret2), rec1(Ret2, Ret3), Ret is Ret3 + 1.
