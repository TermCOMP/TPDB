%query: perm1(i,o).
%% perm1(Xs, Ys) :- Ys is a permutation of the list Xs.
%%

%TWTYPES     :- type perm1(list,list).

perm1([], []).
perm1(Xs, [X | Ys]) :- select(X, Xs, Zs), perm1(Zs, Ys).


%TWTYPES     :- type select(poly,list,list).

select(X, [X | Xs], Xs).
select(X, [Y | Xs], [Y | Zs]) :- select(X, Xs, Zs).


/*TWDESC

 perm1(Xs, Ys) :- Ys is a permutation of the list Xs.

*/


/*TWTYPES

list([]).
list([X|Xs]) :-
	poly(X),
	list(Xs).

poly(dummy).
*/


/*TWDEMO

selected_norms([list,poly]).

query(perm1(b,f,f,f)).
query(perm1(f,b,f,f)).
query(select(f,f,b,f,f,f)).
query(select(f,f,f,b,f,f)).
query(select(f,f,f,f,b,f)).
query(select(f,f,f,f,f,b)).

*/
