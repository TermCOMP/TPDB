%query: rotate(i,o).

% mode: rotate[i,o]
rotate(X,Y) :- append2(A,B,X), append1(B,A,Y).

% mode: append1[i,i,o]
append1([X|Xs],Ys,[X|Zs]) :- append1(Xs,Ys,Zs).
append1([],Ys,Ys).

% mode: append2[o,o,i]
append2([X|Xs],Ys,[X|Zs]) :- append2(Xs,Ys,Zs).
append2([],Ys,Ys).
