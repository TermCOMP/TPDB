%query: bin_tree(i).
%% bin_tree(T) :- T is a tree. 
%%

%TWTYPES :- type bin_tree(tree).

bin_tree(void).
bin_tree(tree(_, Left, Right)) :-
	bin_tree(Left),
	bin_tree(Right).


/*TWDESC

bin_tree(T) :- T is a tree. 

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

query(bin_tree(b,f)).
query(bin_tree(f,b)).


*/
