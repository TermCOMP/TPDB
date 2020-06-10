%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:main(g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_Ackermann01_true-unreach-call_modified_modified.c
main(M, N) :- M >= 0, M =< 3, N >= 0, N =< 23, ackermann(M,N,_).

ackermann(M, N, Ret) :- M =:= 0, !, Ret is N + 1.
ackermann(M, N, Ret) :- N =:= 0, !, M1 is M - 1, ackermann(M1, 1, Ret).
ackermann(M, N, Ret) :- !, N1 is N - 1, ackermann(M, N1, Ret1), M1 is M -1, ackermann(M1, Ret1, Ret2), Ret is Ret2.
