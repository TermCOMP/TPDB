%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
% terminating
%query: fac(f,f).
fac(X, Y) :- X =:= 1, !, Y =:= 1.
fac(X, Y) :- X > 1, !, fac(X - 1, Z), Y is Z * X.
