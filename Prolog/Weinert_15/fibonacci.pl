%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
%query: fib(f,g).
fib(X,Y) :- X < 2, Y = 1.
fib(X,Y) :- X >= 2, fib(X-1, F1), fib(X-2, F2), Y is F1 + F2.
