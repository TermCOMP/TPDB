%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/enger-nonloop-isList-List

f(X) :-
    isList(X),
    f(cons(X, X)).

isList(nil).
isList(cons(_, L)) :- isList(L).