%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/AProVE_10/isNat

f(X) :-
    isNat(X),
    f(s(X)).

isNat(0).
isNat(s(X)) :- isNat(X).
