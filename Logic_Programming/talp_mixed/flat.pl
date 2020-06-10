%query: flat(i,o).

% mode: right[i,o]
right(tree(X, XS1, XS2), XS2).

% mode: flat[i,o]
flat(niltree, nil).
flat(tree(X, niltree, XS), cons(X, YS)) :-
        right(tree(X, niltree, XS), ZS),
        flat(ZS, YS).
flat(tree(X, tree(Y, YS1, YS2), XS), ZS) :-
        flat(tree(Y, YS1, tree(X, YS2, XS)), ZS).
