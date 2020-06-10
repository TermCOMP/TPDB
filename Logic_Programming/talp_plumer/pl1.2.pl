%query: perm(i,o).

% mode: perm[i,o]
perm([],[]).
perm(L,[H|T]) :- append2(V,[H|U],L),
                 append1(V,U,W),
                 perm(W,T).

% mode: append1[i,i,o]
append1([],L,L).
append1([H|L1],L2,[H|L3]) :- append1(L1,L2,L3).

% mode: append2[o,o,i]
append2([],L,L).
append2([H|L1],L2,[H|L3]) :- append2(L1,L2,L3).
