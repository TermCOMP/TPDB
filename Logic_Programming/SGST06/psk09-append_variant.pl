% Author: Peter Schneider-Kamp
% non-terminating for p(X,Y,Z)

%query: p(o,o,o).
p(X,Y,Z) :- append([X|Y],Z,Y).
append([],Y,Y).
append([H|Xs],Ys,[H|Zs]) :- append(Xs,Ys,Zs).
