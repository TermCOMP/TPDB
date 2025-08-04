%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex5_1

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

double(X, Y) :- doubleAkk(X, 0, Y).

doubleAkk(0, X, X).
doubleAkk(s(X), Y, Z) :- doubleAkk(X, s(s(Y)), Z).