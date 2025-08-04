%query: add(i,i).

% Adapted from:
% TPDB/TRS_Standard/AProVE_10/ex4

add(X, Y) :- 
    isNat(X),
    isList(Y),
    add(X, cons(X, Y)).

isNat(0).
isNat(s(N)) :- isNat(N).

isList(nil).
isList(cons(_, Y)) :- isList(Y).