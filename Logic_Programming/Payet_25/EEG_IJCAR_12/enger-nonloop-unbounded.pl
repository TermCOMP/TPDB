%query: h(i,i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/enger-nonloop-unbounded

h(X, Y) :-
    gt(X, Y),
    h(s(X), s(Y)).

gt(s(_), 0).
gt(s(X), s(Y)) :- gt(X, Y).
