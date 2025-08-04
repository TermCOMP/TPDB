%query: while(i,i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/EEG_IJCAR_12/rybalchenko-nonloop-popl08

while(X, Y) :-
    notZero(Y),
    greaterZero(X),
    minus(X, Y, M),
    while(M, Y).

plusNat(0, X, X).
plusNat(s(X), Y, Z) :-
    plusNat(X, s(Y), Z).

notZero(pos(s(_))).
notZero(neg(s(_))).

greaterZero(pos(s(_))).

minus(pos(X), pos(Y), Z) :-
    minusT(X, Y, Z).
minus(neg(X), neg(Y), D) :-
    minusT(X, Y, Z),
    negate(Z, D).
minus(pos(X), neg(Y), pos(Z)) :-
    plusNat(X, Y, Z).
minus(neg(X), pos(Y), neg(Z)) :-
    plusNat(X, Y, Z).

minusT(0, X, neg(X)).
minusT(X, 0, pos(X)).
minusT(s(X), s(Y), Z) :-
    minusT(X, Y, Z).

negate(pos(X), neg(X)).
negate(neg(X), pos(X)).