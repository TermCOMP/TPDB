%query: append3(o,o,o,i).

% mode: append[i,i,o]
append([],L,L).
append([H|L1],L2,[H|L3]) :- append(L1,L2,L3).

% mode: append3[i,i,i,o]
append3(A,B,C,D) :- append(A,B,E), append(E,C,D).
