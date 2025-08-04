%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex7_6

f(X) :-
    len(X, L),
    len(cons(a, X), s(L)),
    append(X, cons(b, nil), Y),
    f(Y).

len(nil, 0).
len(cons(_, Y), s(L)) :- len(Y, L).

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