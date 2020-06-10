%query: tree_member(i,o).
%% tree_member(Element, Tree) :- Element is an element of the tree Tree.
%%

%TWTYPES :- type tree_member(poly,tree).

tree_member(X, tree(X, _, _)).
tree_member(X, tree(_, Left, _)) :- tree_member(X, Left).
tree_member(X, tree(_, _, Right)) :- tree_member(X, Right).


/*TWDESC

tree_member(Element, Tree) :- Element is an element of the tree Tree.

*/


/*TWTYPES

tree(void).
tree(tree(V,L,R)) :-
        poly(V),
        tree(L),
        tree(R).

poly(dummy).
*/


/*TWDEMO

selected_norms([tree,poly]).

query(tree_member(f,f,b,f)).
query(tree_member(f,f,f,b)).


*/
