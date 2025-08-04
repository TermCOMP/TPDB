%query: f(i,i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex2_2

f(X, Y) :-
    gt(X, Y),
    double(X, Z),
    f(Z, s(Y)).

gt(s(_), 0).
gt(s(X), s(Y)) :- gt(X, Y).

double(0, 0).
double(s(X), s(s(Y))) :- double(X, Y).

