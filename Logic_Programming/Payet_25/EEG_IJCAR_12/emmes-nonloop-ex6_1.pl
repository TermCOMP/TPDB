%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex6_1

f(X) :-
    isList(X),
    append(cons(a, nil), X, Y),
    f(Y).

isList(nil).
isList(cons(_, L)) :- isList(L).

append(nil, Ys, Ys).
append(cons(X, Xs), Ys, cons(X, Zs)) :- append(Xs, Ys, Zs).