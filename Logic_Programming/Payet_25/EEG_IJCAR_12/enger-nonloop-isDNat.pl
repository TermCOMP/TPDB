%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/EEG_IJCAR_12/enger-nonloop-isDNat

f(X) :-
    isNat(X),
    f(s(s(X))).

isNat(0).
isNat(s(N)) :- isNat(N).
