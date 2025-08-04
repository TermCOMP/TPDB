%query: g(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/enger-nonloop-swapX

g(X) :-
    f(X, X),
    g(s(X)).

f(0, _).
f(s(X), Y) :- f(X, s(Y)).
