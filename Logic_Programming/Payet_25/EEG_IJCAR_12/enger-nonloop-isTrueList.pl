%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/enger-nonloop-isTrueList

f(X) :-
    isList(X),
    f(cons(tt, X)).

isList(nil).
isList(cons(tt, L)) :- isList(L).
