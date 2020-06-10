%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:test_fun(g,g,g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_c.07.c

test_fun(I, J, K, Tmp) :- loop(I, J, K, Tmp, 0).

loop(I, J, K, Tmp, C) :- I =< 100, J =< K, Tmp1 is I, I1 is J, J1 is Tmp + 1, K1 is K -1, C1 is C + 1, loop(I1, J1, K1, Tmp1, C1).
loop(I, J, K, Tmp, C) :- I > 100.
loop(I, J, K, Tmp, C) :- J > K.
