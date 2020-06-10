%query: app2(o,i,i).


% mode: app1[i,i,o]
app1([X|Xs],Ys,[X|Zs]) :- app1(Xs,Ys,Zs).
app1([],Ys,Ys).

% mode: app2[o,i,i]
app2([X|Xs],Ys,[X|Zs]) :- app2(Xs,Ys,Zs).
app2([],Ys,Ys).
