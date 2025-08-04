%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex4_1

f(X) :-
    minus(X, X, Y),
    eq(Y, 0),
    plus1(X, Z),
    f(Z).

plus1(X, s(X)).

eq(0, 0).
eq(s(X), s(Y)) :- eq(X, Y).

minus(X, 0, X).
minus(0, X, 0).
minus(s(X), s(Y), Z) :- minus(X, Y, Z).
