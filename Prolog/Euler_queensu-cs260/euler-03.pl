%Source: Implementation of problems 1 through 4 from www.projecteuler.net
%query:euler3(g,f).

euler3(Num, Result) :- primeFactors(Num, Factors), max(Factors, Max), Result is Max.

primeFactors(Num, [Num]) :- isPrime(Num), !.
primeFactors(Num, Factors) :- !, lowestPrimeFactor(Num, Factor), primeFactors(Num // Factor, RecursiveFactors), Factors = [Factor|RecursiveFactors].

lowestPrimeFactor(Num, Factor) :- lowestPrimeFactor(2, Num - 1, Num, Factor).
lowestPrimeFactor(Low, High, Num, Factor) :- Low =< High, Num mod Low =:= 0, !, Factor is Low.
lowestPrimeFactor(Low, High, Num, Factor) :- Low =< High, Num mod Low =\= 0, !, lowestPrimeFactor(Low + 1, High, Num, Factor).

isPrime(Cand) :- Cand > 0, isNotMultipleOfRange(2, Cand - 1, Cand).

isNotMultipleOfRange(Low, High, _) :- Low > High, !.
isNotMultipleOfRange(Low, High, Cand) :- Low =< High, !, Cand mod Low =\= 0, isNotMultipleOfRange(Low + 1, High, Cand).

max([X|Xs], Y) :- max(Xs, Y), X < Y.
max([X|Xs], X) :- max(Xs, Y), X >= Y.
max([X], X).
