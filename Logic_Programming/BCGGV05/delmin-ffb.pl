%query: delmin(o,o,i).
%% delete(Element, Tree, Tree1) :- Tree1 is the result of deleting
%%                                 Element from the search tree Tree.

%TWTYPES :- type delete(nat,treen,treen).

delete(X, tree(X, void, Right), Right).
delete(X, tree(X, Left, void), Left).
delete(X, tree(X, Left, Right), tree(Y, Left, Right1)) :-
 	delmin(Right, Y, Right1).
delete(X, tree(Y, Left, Right), tree(Y, Left1, Right)) :-
	less(X,Y), delete(X, Left, Left1).
delete(X, tree(Y, Left, Right), tree(Y, Left, Right1)) :-
 	less(Y,X), delete(X, Right, Right1).


%TWTYPES :- type delmin(treen,nat,treen).

delmin(tree(Y, void, Right), Y, Right).
delmin(tree(X, Left, _), Y, tree(X, Left1, _)) :-
 	delmin(Left, Y, Left1).


%TWTYPES     :- type less(nat,nat).

less(0, s(_)).
less(s(X), s(Y)) :- less(X, Y).


/*TWDESC

delete(Element, Tree, Tree1) :- Tree1 is the result of deleting
                                Element from the search tree Tree.

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

query(delete(b,f,b,f,f,f)).
query(delete(b,f,f,b,f,f)).
query(delete(b,f,f,f,b,f)).
query(delete(b,f,f,f,f,b)).
query(delete(f,f,b,f,f,f)).
query(delete(f,f,f,f,b,f)).
query(less(b,f,f,f)).
query(less(f,f,b,f)).
query(delmin(b,f,f,f,f,f)).
query(delmin(f,b,f,f,f,f)).
query(delmin(f,f,f,f,b,f)).
query(delmin(f,f,f,f,f,b)).

*/
