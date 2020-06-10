%query: front(i,o).
%% front(Tree, List) :- List is a list consisting of the frontier
%%                     of the binary tree Tree. 


%TWTYPES :- type front(tree,list).

front(void, []).
front(tree(X, void, void), [X]).
front(tree(_, L, R), Xs) :-
	front(L, Ls),
	front(R, Rs),
	app(Ls, Rs, Xs).


%TWTYPES :- type app(list,list,list).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
	app(Xs,Ys,Zs).


/*TWDESC

 front(Tree, List) :- List is a list consisting of the frontier
                      of the binary tree Tree. 

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

query(front(f,b,f,f,f,f)).
query(front(f,f,b,f,f,f)).
query(app(b,f,f,f,f,f,f,f,f)).
query(app(f,b,f,f,f,f,f,f,f)).
query(app(f,f,f,f,f,f,b,f,f)).
query(app(f,f,f,f,f,f,f,b,f)).

*/
