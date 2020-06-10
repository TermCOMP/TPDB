%query: reverse(i,o,i).

% mode: reverse[i,o,i]
reverse([],X,X).
reverse([X|Y],Z,U) :- reverse(Y,Z,[X|U]).
