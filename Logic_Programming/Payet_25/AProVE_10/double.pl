%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/AProVE_10/double

f(X) :-
    isDouble(X),
    f(s(s(X))).

isDouble(0).
isDouble(s(s(X))) :- isDouble(X).

