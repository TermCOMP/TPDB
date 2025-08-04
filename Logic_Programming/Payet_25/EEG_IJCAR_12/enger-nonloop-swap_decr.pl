%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/enger-nonloop-swap_decr

f(X) :-
    swap(X, 0),
    f(s(X)).

swap(0, s(X)) :- decr(s(X)).
swap(s(X), Y) :- swap(X, s(Y)).

decr(0).
decr(s(X)) :- decr(X).
