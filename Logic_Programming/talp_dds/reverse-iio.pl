%query: reverse(i,i,o).

% mode: reverse[i,i,o]
reverse([],X,X).
reverse([X|Y],Z,U) :- reverse(Y,Z,[X|U]).
