%query: add(i,i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/enger-nonloop-addTrue

add(X, Y) :-
    isNat(X),
    isList(Y),
    add(X, cons(true, Y)).

isNat(0).
isNat(s(N)) :- isNat(N).

isList(nil).
isList(cons(_, L)) :- isList(L).