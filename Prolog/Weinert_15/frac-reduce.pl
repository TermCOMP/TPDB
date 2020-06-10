%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
%query:reduce(g,f).
reduce(frac(C,D), frac(C,D)) :- !, gcd(C,D,Gcd), Gcd =:= 1.
reduce(frac(C,D), frac(Cres, Dres)) :- !, gcd(C,D,Gcd), Gcd > 1, reduce(frac(C//Gcd, D//Gcd), frac(CRec, DRec)), Cres is CRec, Dres is DRec.

gcd(X,0,X) :- !.
gcd(0,X,X) :- !.
gcd(X,Y,Divisor) :- X>=Y, !, Y>0, Remainder is X mod Y, gcd(Y,Remainder,Divisor).
gcd(X,Y,Divisor) :- X<Y, !, X > 0, gcd(Y,X,Divisor).
