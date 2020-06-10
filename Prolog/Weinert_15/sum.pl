%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
%query: sum(f,f,g).
sum(X,Y,Z) :- Z is X + Y.
sum(X,Y,Z) :- Z is sum(X, Y, Z).
