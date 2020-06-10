%Source: http://research.cs.queensu.ca/home/cisc260/2015w/examples/Arithmetic.pl
%query:prime(g).
prime(N) :- N > 1, HalfN = N//2, noFactorInRange(N,2,HalfN).
noFactorInRange(N,Low,High) :- Low =< High, N mod Low =\= 0, LowPlus1 is Low+1, noFactorInRange(N,LowPlus1,High).
noFactorInRange(_,Low,High) :- Low > High.
