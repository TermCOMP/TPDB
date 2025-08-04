%query: g(i,i).

% Adapted from:
% TPDB/TRS_Standard/AProVE_10/ex3

g(X, Y) :- 
    f(X, Y),
    g(s(X), s(Y)).

f(0, 0).
f(s(X), Y) :- f(X, Y).
f(X, s(Y)) :- f(X, Y).
