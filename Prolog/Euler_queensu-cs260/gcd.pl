%Source: http://research.cs.queensu.ca/home/cisc260/2015w/examples/Arithmetic.pl
%query:gcd(f,f,g).
gcd(X,0,X) :- !.
gcd(0,X,X) :- !.
gcd(X,Y,Divisor) :- X>=Y, !, Y>0, Remainder is X mod Y, gcd(Y,Remainder,Divisor).
gcd(X,Y,Divisor) :- X<Y, !, X > 0, gcd(Y,X,Divisor).
