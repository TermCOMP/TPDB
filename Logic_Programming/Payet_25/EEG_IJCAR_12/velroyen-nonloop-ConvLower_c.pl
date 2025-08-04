%query: while(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/EEG_IJCAR_12/velroyen-nonloop-ConvLower_c

while(s(s(s(X)))) :-
    gt(s(s(s(X))),s(0)),
    f(s(s(s(X))), Y),
    while(Y).

f(X, Y) :-
    neq(X, s(s(0)), Z),
    if(Z, X, Y).

if(true, X, Z) :- plus(X, s(0), Z).
if(false, X, X).

plus(0, X, X).
plus(s(X), Y, Z) :- plus(X, s(Y), Z).

gt(s(_), 0).
gt(s(X), s(Y)) :- gt(X, Y).

neq(0, 0, false).
neq(0, s(_), true).
neq(s(_), 0, true).
neq(s(X), s(Y), Z) :- neq(X, Y, Z).