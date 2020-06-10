%query: perm(i,o).

% mode: app1[i,i,o]
app1([X|Xs],Ys,[X|Zs]) :- app1(Xs,Ys,Zs).
app1([],Ys,Ys).

% mode: app2[o,o,i]
app2([X|Xs],Ys,[X|Zs]) :- app2(Xs,Ys,Zs).
app2([],Ys,Ys).

% mode: perm[i,o]
perm(Xs,[X|Ys]) :- app2(X1s,[X|X2s],Xs),
                   app1(X1s,X2s,Zs),
                   perm(Zs,Ys).
perm([],[]).
