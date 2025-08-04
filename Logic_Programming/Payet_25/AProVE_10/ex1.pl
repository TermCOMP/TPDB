%query: f(i,i).

% Adapted from:
% TPDB/TRS_Standard/AProVE_10/ex1

f(X, Y) :- 
    lt(X, Y),
    f(s(X), s(Y)).

lt(0, X).
lt(s(X), s(Y)) :- lt(X, Y).
