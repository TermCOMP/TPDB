%query: insert(i,o,o).
%% insert(Element, Tree, Tree1) :- Tree1 is the result of inserting
%%                                 Element in the search tree Tree.


%TWTYPES :- type insert(nat,treen,treen).

insert(X, void, tree(X, void, void)).
insert(X, tree(X, Left, Right), tree(X, Left, Right)).
insert(X, tree(Y, Left, Right), tree(Y, Left1, Right)) :-
	less(X,Y), insert(X, Left, Left1).
insert(X, tree(Y, Left, Right), tree(Y, Left, Right1)) :-
 	less(Y,X), insert(X, Right, Right1).


%TWTYPES :- type less(nat,nat).

less(0, s(_)).
less(s(X), s(Y)) :- less(X, Y).



/*TWDESC

%% insert(Element, Tree, Tree1) :- Tree1 is the result of inserting
%%                                 Element in the search tree Tree.

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

query(insert(b,f,b,f,f,f)).
query(insert(b,f,f,b,f,f)).
query(insert(b,f,f,f,b,f)).
query(insert(b,f,f,f,f,b)).
query(insert(f,f,b,f,f,f)).
query(insert(f,f,f,f,b,f)).
query(less(b,f,f,f)).
query(less(f,f,b,f)).

*/
