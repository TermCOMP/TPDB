%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:main(g).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_Ackermann01_true-unreach-call_modified_modified.c
main(X) :- X >= 1, fibonacci(X, _).

fibonacci(N, Ret) :- N < 1, !, Ret is 0.
fibonacci(N, Ret) :- N =:= 1, !, Ret is 1.
fibonacci(N, Ret) :- !, N1 is N - 1, fibonacci(N1, Ret1), N2 is N - 2, fibonacci(N2, Ret2), Ret is Ret1 + Ret2.
