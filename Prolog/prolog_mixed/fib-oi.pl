%query: fib1(o,i).
% From "Prolog programming for Artificial Intelligence" by Ivan Bratko 1986


fib1(N, F) :- forwardfib(2, N, 1, 1, F).

forwardfib(M, N, F1, F2, F2) :- M >= N.
forwardfib(M, N, F1, F2, F)  :-
             M < N,
             NextM is M+1,
             NextF2 is F1+F2,
             forwardfib(NextM, N, F2, NextF2, F).



% From the book
% PROLOG PROGRAMMING IN DEPTH
% by Michael A. Covington, Donald Nute, and Andre Vellino
% (Prentice Hall, 1997).
% Copyright 1997 Prentice-Hall, Inc.
% For educational use only

% File FIB.PL
% Computes Fibonacci numbers the inefficient way.

fib2(1,1) :- !.
fib2(2,1) :- !.
fib2(N,F) :- N>2,
            N1 is N-1, fib2(N1,F1),
            N2 is N-2, fib2(N2,F2),
            F is F1+F2.
