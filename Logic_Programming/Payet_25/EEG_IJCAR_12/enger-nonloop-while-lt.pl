%query: while(i,i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/enger-nonloop-while-lt

while(X, Y) :-
    lt(X, Y),
    while(s(X), s(Y)).

lt(0, _).
lt(s(X), s(Y)) :- lt(X, Y).
