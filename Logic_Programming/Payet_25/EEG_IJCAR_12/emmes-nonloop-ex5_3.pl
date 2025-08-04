%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex5_3

f(s(X)) :-
    minus(X, X, Y),
    eq(Y, 0),
    double(s(X), Z),
    f(Z).

eq(0, 0).
eq(s(X), s(Y)) :- eq(X, Y).

minus(X, 0, X).
minus(0, X, 0).
minus(s(X), s(Y), Z) :- minus(X, Y, Z).

double(X, Y) :- plus(X, X, Y).

plus(0, X, X).
plus(s(X), Y, Z) :- plus(X, s(Y), Z).