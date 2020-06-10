%query: preorder(i,o).

/* Folklore. */

preorder(T,Xs):- preorder_dl(T,Xs-[]).
preorder_dl(nil,X-X).
preorder_dl(tree(L,X,R),[X|Xs]-Zs):-
        preorder_dl(L,Xs-Ys),
        preorder_dl(R,Ys-Zs).

