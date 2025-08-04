%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/AProVE_10/halfdouble

f(X) :-
    double(X, Y),
    half(Y, Z),
    eq(X, Z),
    f(s(X)).

eq(0, 0).
eq(s(X), s(Y)) :- eq(X, Y).

double(0, 0).
double(s(X), s(s(Y))) :- double(X, Y).

half(0, 0).
half(s(s(X)), s(Y)) :- half(X, Y).