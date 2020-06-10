%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
% terminating
% Implements calculation of the Ackermann function.
% Direct implementation of the recursive definition by Péter (1935)
% First attempt did not check for X > 0, Y > 0 in last case. Was found nonterminating by aprove
%query:ackermann(b,b,f).
ackermann(X, Y, Z) :- X =:= 0, Y >= 0, !, Z is Y + 1.
ackermann(X, Y, Z) :- X > 0, Y =:= 0, !, ackermann(X - 1, 1, Z).
ackermann(X, Y, Z) :- X > 0, Y > 0, !, ackermann(X, Y - 1, W), ackermann(X - 1, W, Z).
