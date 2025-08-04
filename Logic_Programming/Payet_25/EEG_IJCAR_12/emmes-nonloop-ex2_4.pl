%query: f(i,i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex2_4

f(X, Y) :-
    gt(X, Y),
    double(X, Z),
    f(Z, s(Y)).

gt(s(_), 0).
gt(s(X), s(Y)) :- gt(X, Y).

double(X, Y) :- times(s(s(0)), X, Y).

times(0, _, 0).
times(s(X), Y, Z) :-
    times(X, Y, A),
    plus(Y, A, Z).

plus(0, X, X).
plus(s(X), Y, Z) :- plus(X, s(Y), Z).
