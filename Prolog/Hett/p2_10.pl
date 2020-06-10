%Source: https://sites.google.com/site/prologsite/prolog-problems
%query:totient_phi_2(g,f).
%
% 2.10 (**) Calculate Euler's totient function phi(m) (2). 
% See problem 2.09 for the definition of Euler's totient function. 
% If the list of the prime factors of a number m is known in the 
% form of problem P36 then the function phi(m) can be efficiently
% calculated as follows: 
%
% Let [[p1,m1],[p2,m2],[p3,m3],...] be the list of prime factors (and their
% multiplicities) of a given number m. Then phi(m) can be calculated 
% with the following formula:
%
% phi(m) = (p1 - 1) * p1 ** (m1 - 1) * (p2 - 1) * p2 ** (m2 - 1) * 
%          (p3 - 1) * p3 ** (m3 - 1) * ...
%
% Note that a ** b stands for the b'th power of a.

% totient_phi_2(N,Phi) :- Phi is the value of Euler's totient function
%    for the argument N.
%    (integer,integer) (+,?)

totient_phi_2(N,Phi) :- prime_factors_mult(N,L), to_phi(L,Phi).

prime_factors_mult(N,L) :- N > 0, prime_factors_mult(N,L,2).

prime_factors_mult(1,[],_) :- !.
prime_factors_mult(N,[[F,M]|L],F) :- divide(N,F,M,R), !, % F divides N
   next_factor(R,F,NF), prime_factors_mult(R,L,NF).
prime_factors_mult(N,L,F) :- !,                          % F does not divide N
   next_factor(N,F,NF), prime_factors_mult(N,L,NF).

% divide(N,F,M,R) :- N = R * F**M, M >= 1, and F is not a factor of R. 
%    (integer,integer,integer,integer) (+,+,-,-)

divide(N,F,M,R) :- divi(N,F,M,R,0), M > 0.

divi(N,F,M,R,K) :- S is N // F, N =:= S * F, !,          % F divides N
   K1 is K + 1, divi(S,F,M,R,K1).
divi(N,_,M,N,M).

to_phi([],1).
to_phi([[F,1]|L],Phi) :- !,
   to_phi(L,Phi1), Phi is Phi1 * (F - 1).
to_phi([[F,M]|L],Phi) :- M > 1,
   M1 is M - 1, to_phi([[F,M1]|L],Phi1), Phi is Phi1 * F.
