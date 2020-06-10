%query: sublist(i,i).

% mode: append1[o,i,o]
append1([],Ys,Ys).
append1([X|Xs],Ys,[X|Zs]) :- append1(Xs,Ys,Zs).

% mode: append2[i,o,i]
append2([],Ys,Ys).
append2([X|Xs],Ys,[X|Zs]) :- append2(Xs,Ys,Zs).

% mode: sublist[i,i]
sublist(X,Y) :- append1(U,X,V), append2(V,W,Y).
