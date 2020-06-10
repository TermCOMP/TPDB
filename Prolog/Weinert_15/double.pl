%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
% terminating
%query: double(b, b).
double(X, Y) :- Y =< 0, !, X =:= 0.
double(X, Y) :- Y > 0, !, double(X - 1, Y - 2).
