%query: f(i,i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex2_3

f(X, Y) :-
    gt(X, Y),
    double(X, Z),
    f(Z, s(Y)).

gt(s(_), 0).
gt(s(X), s(Y)) :- gt(X, Y).

double(X, Y) :- plus(X, X, Y).

plus(X, 0, X).
plus(X, s(Y), s(Z)) :- plus(X, Y, Z).
