%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:main(g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_recHanoi02_true-unreach-call_true-termination_modified.c

main(N) :- N >= 1, N =< 31, hanoi(N, _).

hanoi(N, Ret) :- N =:= 1, !, Ret is 1.
hanoi(N, Ret) :- hanoi(N-1, Ret1). Ret is (Ret1 * 2) + 1.
