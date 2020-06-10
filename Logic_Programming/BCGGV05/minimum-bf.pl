%query: minimum(i,o).
%% minimum(Tree, Element) :- Element is the minimum element of
%%                          the search tree Tree.

%TWTYPES :- type minimum(tree,poly).

minimum(tree(X, void, _), X).
minimum(tree(_, Left, _), X) :- minimum(Left, X).


/*TWDESC

 minimum(Tree, Element) :- Element is the minimum element of
                           the search tree Tree.

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

query(minimum(b,f,f,f)).
query(minimum(f,b,f,f)).


*/
