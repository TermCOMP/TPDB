%query: in_order(i,o).
%% in_order(Tree, List) :- List is a list obtained by the in_order traversal
%%                         of the tree Tree.

%TWTYPES :- type in_order(tree,list).

in_order(void, []).
in_order(tree(X, Left, Right), Xs) :-
	in_order(Left, Ls),
	in_order(Right, Rs),
	app(Ls, [X | Rs], Xs).

%TWTYPES :- type app(list,list,list).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
	app(Xs,Ys,Zs).


/*TWDESC

in_order(Tree, List) :- List is a list obtained by the in_order traversal
                        of the tree Tree.


*/


/*TWTYPES

tree(void).
tree(tree(V,L,R)) :-
        poly(V),
        tree(L),
        tree(R).

list([]).
list([X|Xs]) :-
	poly(X),
	list(Xs).

poly(dummy).
*/


/*TWDEMO

selected_norms([list,tree,poly]).

query(in_order(f,b,f,f,f,f)).
query(in_order(f,f,b,f,f,f)).
query(app(b,f,f,f,f,f,f,f,f)).
query(app(f,b,f,f,f,f,f,f,f)).
query(app(f,f,f,f,f,f,b,f,f)).
query(app(f,f,f,f,f,f,f,b,f)).
 
*/

