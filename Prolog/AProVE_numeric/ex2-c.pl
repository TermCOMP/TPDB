%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:rec2(g,f).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/ex2.c
rec1(I, Ret) :- I =< 0, !, Ret is 0.
rec1(I, Ret) :- !, I1 is I + 1, rec1(I1, Ret1), rec2(Ret1, Ret2), Ret is Ret2.

rec2(J, Ret) :- J =< 0, !, Ret is 0.
rec2(J, Ret) :- !, I1 is I - 1, rec2(I1, Ret1), rec1(Ret1, Ret2), Ret is Ret2.
