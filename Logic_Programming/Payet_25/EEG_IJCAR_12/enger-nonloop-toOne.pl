%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/enger-nonloop-toOne

f(X) :-
    toOne(X, Y),
    eq(Y, s(0)),
    f(s(X)).

toOne(s(0), s(0)).
toOne(s(s(X)), Y) :- toOne(s(X), Y).

eq(0, 0).
eq(s(X), s(Y)) :- eq(X, Y).
