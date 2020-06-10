%query: append(i,i,o).

% mode: append[i,i,o]
append([H|X],Y,[X|Z]) :- append(X,Y,Z).
append([],Y,Y).

