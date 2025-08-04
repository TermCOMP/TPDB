%query: while(i,i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/enger-nonloop-ex_payet

while(X, Y) :-
    gt(X, 0, Z),
    cond(Z, X, Y).

cond(true, s(X), Y) :-
    gt(Y, 0, true),
    while(X, Y).
cond(false, _, Y) :-
    gt(s(Y), 0, true),
    while(s(Y),s(Y)).

gt(s(_), 0, true).
gt(0, _, false).
gt(s(X), s(Y), Z) :- gt(X, Y, Z).
