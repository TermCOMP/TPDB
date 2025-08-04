%query: from(i).

% Adapted from:
% TPDB/TRS_Standard/AProVE_10/challenge_fab

from(X) :-
    isNatList(X),
    fromCond(X).

fromCond(cons(X, Y)) :-
    from(cons(s(X), cons(X, Y))).

isNat(0).
isNat(s(N)) :- isNat(N).

isNatList(nil).
isNatList(cons(X, Y)) :-
    isNat(X),
    isNatList(Y).