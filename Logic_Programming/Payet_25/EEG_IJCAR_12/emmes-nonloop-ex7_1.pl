%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex7_1

f(X) :-
    len(X, L),
    len(cons(a, X), s(L)),
    f(cons(a, X)).

len(nil, 0).
len(cons(_, Y), s(L)) :- len(Y, L).
