%Source: Implementation of problems 1 through 4 from www.projecteuler.net
%query:euler2(i,o).
euler2(Bound, Result) :- sumEvenFib(0,0,Bound,Result).

sumEvenFib(Fib1, Fib2, Bound, Result) :- nextFib(Fib1, Fib2, NextFib), NextFib > Bound, Result is 0.
sumEvenFib(Fib1, Fib2, Bound, Result) :- nextFib(Fib1, Fib2, NextFib), NextFib =< Bound, NextFib mod 2 =:= 0, sumEvenFib(Fib2, NextFib, Bound, RecursiveResult), Result is RecursiveResult + NextFib.
sumEvenFib(Fib1, Fib2, Bound, Result) :- nextFib(Fib1, Fib2, NextFib), NextFib =< Bound, NextFib mod 2 =\= 0, sumEvenFib(Fib2, NextFib, Bound, Result).

nextFib(Fib1, Fib2, NextFib) :- NextFib is Fib1 + Fib2.
