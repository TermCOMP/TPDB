%query: flat(i,o).

flat(niltree, nil).
flat(tree(X, niltree, T), cons(X, Xs)) :- flat(T, Xs).
flat(tree(X, tree(Y, T1, T2), T3), Xs) :-
        flat(tree(Y, T1, tree(X, T2, T3)), Xs).
