%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex3_2

f(X) :-
    gt(X, 0),
    double(X, Y),
    f(Y).

gt(s(_), 0).
gt(s(X), s(Y)) :- gt(X, Y).

double(X, Y) :- plus(X, X, Y).

plus(0, X, X).
plus(s(X), Y, Z) :- plus(X, s(Y), Z).
