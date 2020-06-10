%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
% terminating
%query: desc(b).
desc(X) :- X =< 0.
desc(X) :- X >= 0, desc(X-1).
