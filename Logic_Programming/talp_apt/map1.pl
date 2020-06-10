%query: map(i,o).

p(X,Y).
map([X|Xs],[Y|Ys]) :- p(X,Y),map(Xs,Ys).
map([],[]).
