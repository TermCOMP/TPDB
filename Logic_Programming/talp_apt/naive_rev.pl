%query: reverse(i,o).

% mode: app[i,i,o]
app([X|Xs],Ys,[X|Zs]) :- app(Xs,Ys,Zs).
app([],Ys,Ys).

% mode: reverse[i,o]
reverse([X|Xs],Ys) :- reverse(Xs,Zs), app(Zs,[X],Ys).
reverse([],[]).
