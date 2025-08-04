%query: f(i).

% Adapted from:
% TPDB/TRS_Standard/AProVE_10/isList

f(X) :-
    isList(X),
    f(X).

isList(nil).
isList(cons(_, xs)) :- isList(xs).
