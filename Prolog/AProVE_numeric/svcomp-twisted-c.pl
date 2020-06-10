%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:f(g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_twisted.c

f(K, L) :- l1(K, L, 0, 0).

l1(K, L, I, J) :- I < K, l1body(K, L, I, J).
l1(K, L, I, J) :- I >= K, l2(K, L, I, J).
l1body(K, L, I, J) :- I1 is I + 1, I1 mod 2 =:= 1, l1(K, L, I1, J).
l1body(K, L, I, J) :- I1 is I + 1, I1 mod 2 =\= 1, l2(K, L, I1, J).

l2(K, L, I, J) :- J < L, l2body(K, L, I, J).
l2(K, L, I, J) :- J >= L.
l2body(K, L, I, J) :- J1 is J + 1, J1 mod 2 =:= 1, l2(K, L, I, J1).
l2body(K, L, I, J) :- J1 is J + 1, J1 mod 2 =\= 1, l1(K, L, I, J1).
