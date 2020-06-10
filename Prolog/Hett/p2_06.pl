%Source: https://sites.google.com/site/prologsite/prolog-problems
%query:goldbach_list(g,g).
% 2.06 (*) A list of Goldbach compositions. 
% Given a range of integers by its lower and upper limit, 
% print a list of all even numbers and their Goldbach composition.

% goldbach_list(A,B) :- print a list of the Goldbach composition
%    of all even numbers N in the range A <= N <= B
%    (integer,integer) (+,+)

goldbach_list(A,B) :- goldbach_list(A,B,2).

% goldbach_list(A,B,L) :- perform goldbach_list(A,B), but suppress
% all output when the first prime number is less than the limit L.

goldbach_list(A,B,L) :- A =< 4, !, g_list(4,B,L).
goldbach_list(A,B,L) :- A1 is ((A+1) // 2) * 2, g_list(A1,B,L).

g_list(A,B,_) :- A > B, !.
g_list(A,B,L) :- goldbach(A,[P,Q]), A2 is A + 2, g_list(A2,B,L).

goldbach(4,[2,2]) :- !.
goldbach(N,L) :- N mod 2 =:= 0, N > 4, goldbach(N,L,3).

goldbach(N,[P,Q],P) :- Q is N - P, is_prime(Q), !.
goldbach(N,L,P) :- P < N, next_prime(P,P1), goldbach(N,L,P1).

next_prime(P,P1) :- P1 is P + 2, is_prime(P1), !.
next_prime(P,P1) :- P2 is P + 2, next_prime(P2,P1).

is_prime(2).
is_prime(3).
is_prime(P) :- integer(P), P > 3, P mod 2 =\= 0, \+ has_factor(P,3).  

% Define integer for termination analysis.
integer(_).

% has_factor(N,L) :- N has an odd factor F >= L.
%    (integer, integer) (+,+)

has_factor(N,L) :- N mod L =:= 0.
has_factor(N,L) :- L * L < N, L2 is L + 2, has_factor(N,L2).
