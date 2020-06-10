%Source: https://sites.google.com/site/prologsite/prolog-problems
%query:coprime(g,g).
% 2.08 (*) Determine whether two positive integer numbers are coprime. 
%     Two numbers are coprime if their greatest common divisor equals 1.

% coprime(X,Y) :- X and Y are coprime.
%    (integer, integer) (+,+)

coprime(X,Y) :- gcd(X,Y,1).

gcd(X,0,X) :- X > 0.
gcd(X,Y,G) :- Y > 0, Z is X mod Y, gcd(Y,Z,G).
