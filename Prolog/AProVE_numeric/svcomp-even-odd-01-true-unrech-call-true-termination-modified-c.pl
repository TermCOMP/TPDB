%Source: Ports of programs found in TPDB/C/AProVE_numeric
%query:main(g).
main(N) :- N >= 0, isOdd(N).

isOdd(1).
isOdd(N) :- N > 1, N1 is N - 1, isEven(N1).

isEven(0).
isEven(N) :- N > 1, N1 is N - 1, isOdd(N1).
