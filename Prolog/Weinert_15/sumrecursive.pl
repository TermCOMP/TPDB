%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
%query: sum(f,g,g).
sum(X,Y,Z) :- X =:= 0, Z is Y.
sum(X,Y,Z) :- X < 0, sum(X+1, Y-1, Z).
sum(X,Y,Z) :- X > 0, sum(X-1, Y+1, Z).
