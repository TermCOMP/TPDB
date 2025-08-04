%query: g(i).

% Adapted from:
% TPDB/TRS_Standard/AProVE_10/ex2

g(X) :- 
    h(f(X, X)),
    g(s(X)).

h(f(0, _)).
h(f(s(X), Y)) :- h(f(X, s(Y))).
