%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex3_4

f(X) :-
    gt(X, 0),
    double(X, Y),
    f(Y).

gt(s(_), 0).
gt(s(X), s(Y)) :- gt(X, Y).

double(X, Y) :- times(s(s(0)), X, Y).

times(0, _, 0).
times(s(X), Y, Z) :-
    times(X, Y, A),
    plus(Y, A, Z).

plus(0, X, X).
plus(s(X), Y, Z) :- plus(X, s(Y), Z).
