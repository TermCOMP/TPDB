%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:main(g,f).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/TwoWay_true.c
main(X,Ret) :- twoWay(1, X, Ret).

twoWay(Terminate, N, 1) :- N < 0, !.
twoWay(Terminate, N, Ret) :- Terminate =:= 1, !, M is N - 1, twoWay(Terminate, M, Ret1), Ret is Ret1 * M.
twoWay(Terminate, N, Ret) :- Terminate =\= 1, !, M is N + 1, twoWay(Terminate, M, Ret1), Ret is Ret1 * M.
