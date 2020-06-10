%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query: main(g,g).
main(M, N) :- M > 0, N > 0, addition(M, N, Ret).

addition(M, N, Ret) :- N =:= 0, !, Ret is M.
addition(M, N, Ret) :- N > 0, !, M1 is M + 1, N1 is N - 1, addition(M1, N1, Ret).
addition(M, N, Ret) :- N < 0, !, M1 is M - 1, N1 is N + 1, addition(M1, N1, Ret).
