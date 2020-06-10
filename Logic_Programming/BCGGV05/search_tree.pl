%query: search_tree(i).
%% search_tree(Tree) :- Tree is a search tree. 
%%

%TWTYPES :- type search_tree(treen).

search_tree(void).
search_tree(T) :- search_tree(T, _, _).

%TWTYPES :- type search_tree(treen,nat,nat).

search_tree(tree(X, void, void), X, X).
search_tree(tree(X, void, Right), X, Max) :-
	search_tree(Right, Min, Max), less(X,Min).
search_tree(tree(X, Left, void), Min, X) :-
	search_tree(Left, Min, Max), less(Max,X).
search_tree(tree(X, Left, Right), Min1, Max2) :-
	search_tree(Left, Min1, Max1), less(Max1,X),
	search_tree(Right, Min2, Max2), less(X,Min2).


%TWTYPES     :- type less(nat,nat).

less(0, s(_)).
less(s(X), s(Y)) :- less(X, Y).



/*TWDESC

search_tree(Tree) :- Tree is a search tree.

*/


/*TWTYPES

treen(void).
treen(tree(V,L,R)) :-
        nat(V),
        treen(L),
        treen(R).

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([nat,treen]).

query(search_tree(b,f)).
query(search_tree(b,f,f,f,f,f)).
query(less(b,f,f,f)).
query(less(f,f,b,f)).


*/
