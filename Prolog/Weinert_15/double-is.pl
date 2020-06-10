%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
% terminating
%query: double(b, b).
double(X, Y) :- X =:= 0, !, Y is 0.
double(X, Y) :- X > 0, !, double(X - 1, Z), Y is Z + 2.
