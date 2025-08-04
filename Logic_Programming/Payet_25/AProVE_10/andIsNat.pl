%query: f(i,i).

% Adapted from:
% TPDB/TRS_Standard/AProVE_10/andIsNat

f(X, Y) :-
    isNat(X),
    isNat(Y),
    f(s(X), s(Y)).

isNat(0).
isNat(s(N)) :- isNat(N).
