%query: reverse_concatenate(i,i,o).
% sicstus1: Example of simple list processing


% mode: concatenate[i,i,o]
concatenate([], L, L).
concatenate([X|L1], L2, [X|L3]) :- concatenate(L1, L2, L3).

% mode: member[i,i]
member(X, [X|L]).
member(X, [Y|L]) :- member(X, L).

% mode: reverse[i,o]
reverse(L, L1) :- reverse_concatenate(L, [], L1).

% mode: reverse_concatenate[i,i,o]
reverse_concatenate([], L, L).
reverse_concatenate([X|L1], L2, L3) :-
        reverse_concatenate(L1, [X|L2], L3).
