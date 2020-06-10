%query: p(o,o,o).
p(X,Y,Z) :- append(X,Y,Z),!.
append([],Y,Y).
append([H|Xs],Ys,[H|Zs]) :- append(Xs,Ys,Zs).