%query: f(i,i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex1_5

f(X, Y) :-
    gt(X, Y),
    plus2(X, X1),
    plus1(Y, Y1),
    f(X1, Y1).

gt(s(_), 0).
gt(s(X), s(Y)) :- gt(X, Y).

plus1(X, Y) :- plus(s(0), X, Y).

plus2(X, Y) :- plus(s(s(0)), X, Y).

plus(0, X, X).
plus(s(X), Y, s(Z)) :- plus(X, Y, Z).
