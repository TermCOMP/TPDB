%query: preorder(i,o).

preorder(T,Xs) :- preorder_dl(T,Xs-[]).

preorder_dl(nil,X-X).
preorder_dl(tree(L,X,R),[X|Xs]-Zs) :-
    preorder_dl(L,Xs-Ys),
    preorder_dl(R,Ys-Zs).


/*TWDESC

pre-ordered traversal of binary tree using difference lists

*/

/*TWDEMO

selected_norms([termsize_nodes]).
*/
/*.
untupling.

*/
