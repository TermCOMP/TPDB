%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:rec(g,f).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/rec_counter1.c
rec(A, Ret) :- A =:= 0, !, Ret is 0.
rec(A, Ret) :- A1 is A - 1, rec(A1, Ret1), countDown(Ret1, Ret2), Ret is 1 + Ret2.

countDown(X, Ret) :- X > 0, !, X1 is X - 1, countDown(X1, Ret1), Ret is Ret1 - 1.
countDown(X, X) :- X =< 0, !.
