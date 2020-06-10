%query: permute(i,o).

% mode: permute[i,o]
permute([],[]).
permute([X|Y],[U|V]) :- delete(U,[X|Y],W),permute(W,V).

% mode: delete[o,i,o]
delete(X,[X|Y],Y).
delete(U,[X|Y],[X|Z]) :- delete(U,Y,Z).

