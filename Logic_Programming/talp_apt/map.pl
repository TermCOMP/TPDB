%query: map(i,o).

% mode: p[i,o]
p(val_i,val_j).

% mode: map[i,o]
map([X|Xs],[Y|Ys]) :- p(X,Y),map(Xs,Ys).
map([],[]).
