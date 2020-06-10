%query: perm(i,o).

% mode: perm[i,o]
perm([],[]).
perm([X|L],Z) :- perm(L,Y), insert(X,Y,Z).

% mode: insert[i,i,o]
insert(X,[],[X]).
insert(X,L,[X|L]).
insert(X,[H|L1],[H|L2]) :- insert(X,L1,L2).
