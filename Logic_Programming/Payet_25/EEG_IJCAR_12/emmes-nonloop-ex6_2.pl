%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex6_2

f(X) :-
    isList(X),
    append(cons(a, nil), X, Y),
    f(Y).

isList(nil).
isList(cons(_, L)) :- isList(L).

append(X, Y, Z) :-
    reverse(X, A),
    appendAkk(A, Y, Z).

appendAkk(nil, Ys, Ys).
appendAkk(cons(X, Xs), Ys, Zs) :-
    appendAkk(Xs, cons(X, Ys), Zs).

reverse(nil, nil).
reverse(cons(X, Xs), Ys) :-
    reverse(Xs, Zs),
    append(Zs, cons(X, nil), Ys).