%Source: https://sites.google.com/site/prologsite/prolog-problems
%query: goldbach(g,f).

% 2.05 (**) Goldbach's conjecture. 
% Goldbach's conjecture says that every positive even number greater 
% than 2 is the sum of two prime numbers. Example: 28 = 5 + 23.

% goldbach(N,L) :- L is the list of the two prime numbers that
%    sum up to the given N (which must be even).
%    (integer,integer) (+,-)

goldbach(4,[2,2]) :- !.
goldbach(N,L) :- N mod 2 =:= 0, N > 4, goldbach(N,L,3).

goldbach(N,[P,Q],P) :- Q is N - P, is_prime(Q), !.
goldbach(N,L,P) :- P < N, next_prime(P,P1), goldbach(N,L,P1).

next_prime(P,P1) :- P1 is P + 2, is_prime(P1), !.
next_prime(P,P1) :- P2 is P + 2, next_prime(P2,P1).

is_prime(2).
is_prime(3).
is_prime(P) :- integer(P), P > 3, P mod 2 =\= 0, \+ has_factor(P,3).  

% has_factor(N,L) :- N has an odd factor F >= L.
%    (integer, integer) (+,+)

has_factor(N,L) :- N mod L =:= 0.
has_factor(N,L) :- L * L < N, L2 is L + 2, has_factor(N,L2).
