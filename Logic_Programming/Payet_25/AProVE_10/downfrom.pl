%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/AProVE_10/downfrom

f(X) :-
    downfrom(X, Y),
    isList(Y),
    f(s(X)).

isList(nil).
isList(cons(X, Y)) :-
    isList(Y).

downfrom(0, nil).
downfrom(s(X), cons(s(X), Y)) :- downfrom(X, Y).