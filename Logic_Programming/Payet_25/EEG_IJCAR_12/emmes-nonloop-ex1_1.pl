%query: f(i,i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/emmes-nonloop-ex1_1

f(X, Y) :-
    gt(X, Y),
    plus2(X, X1),
    plus1(Y, Y1),
    f(X1, Y1).

gt(s(_), 0).
gt(s(X), s(Y)) :- gt(X, Y).

plus1(X, s(X)).

plus2(X, s(s(X))).