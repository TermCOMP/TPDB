%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query: binomial(g,g,f).
% source: port of http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/Binomial_true.c

binomial(N, K, Ret) :- fact(N, NFact), fact(K, KFact), NMinK is N - K, fact(NMinK, NMinKFact), Ret is NFact // (KFact * NMinKFact).

fact(N, 1) :- N =< 0.
fact(N, Ret) :- N > 0, NRec is N - 1, fact(NRec, RetRec), Ret is RetRec * N.
