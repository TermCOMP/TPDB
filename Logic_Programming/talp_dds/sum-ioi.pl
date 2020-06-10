%query: sum(i,o,i).


% mode: sum[i,i,o]
sum([],[],[]).
sum([X1|Y1],[X2|Y2],[X3|Y3]) :- add(X1, X2, X3), sum(Y1,Y2,Y3).

% mode: add[i,i,o]
add(0, X, X). 
add(s(X), Y, s(Z)) :- add(X, Y, Z).
