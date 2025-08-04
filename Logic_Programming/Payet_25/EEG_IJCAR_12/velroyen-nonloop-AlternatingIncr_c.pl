%query: while(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/EEG_IJCAR_12/velroyen-nonloop-AlternatingIncr_c

while(s(s(s(s(s(X)))))) :-
    gt(s(s(s(s(s(X))))), 0),
    f(s(s(s(s(s(X))))), Y),
    while(Y).

f(X, Y) :-
    mod2(X, 0),
    if(true, X, Y).

if(true, X, Z) :- plus(X, s(0), Z).
if(false, X, Z) :- plus(X, s(s(s(0))), Z).

plus(0, X, X).
plus(s(X), Y, Z) :- plus(X, s(Y), Z).

mod2(0, 0).
mod2(s(0), s(0)).
mod2(s(s(X)), Y) :- mod2(X, Y).

gt(s(_), 0).
gt(s(X), s(Y)) :- gt(X, Y).