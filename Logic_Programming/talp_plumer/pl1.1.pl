%query: append(o,o,o).

% mode: append[i,i,o]
append([],L,L).
append([H|L1],L2,[H|L3]) :- append(L1,L2,L3).

% mode: append1[o,o,i]
append1([],L,L).
append1([H|L1],L2,[H|L3]) :- append1(L1,L2,L3).

