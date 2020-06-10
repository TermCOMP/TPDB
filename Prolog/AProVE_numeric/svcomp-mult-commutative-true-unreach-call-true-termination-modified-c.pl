%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query: main(g,g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_MultCommutative_true-unreach-call_true-termination_modified.c
main(M, N) :- M >= 0, N >= 0, mult(M, N, Ret1), mult(N, M, Ret2).

mult(N, M, Ret) :- M < 0, !, M1 is -M, mult(N, M1, Ret).
mult(_, M, Ret) :- M =:= 0, Ret is 0.
mult(N, M, Ret) :- !, M1 is M - 1, mult(N, M1, Ret1), Ret is N + Ret1.
