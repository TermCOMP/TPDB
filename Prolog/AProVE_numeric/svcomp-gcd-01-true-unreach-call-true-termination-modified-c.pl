%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:main(g,g).
% source: http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/file/72cccd64ec42/C/AProVE_numeric/svcomp_gcd01_true-unreach-call_true-termination_modified.c

main(M, N) :- M > 0, N > 0, gcd(M, N).

gcd(Y1, Y2) :- Y1 =< 0, !.
gcd(Y1, Y2) :- Y2 =< 0, !.
gcd(Y1, Y2) :- Y2 =:= 0, !.
gcd(Y1, Y2) :- Y1 > Y2, gcd(Y1 - Y2, Y2), !.
gcd(Y1, Y2) :- gcd(Y1, Y2 - Y1).
