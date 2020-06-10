%query: perm(i,o).
%% perm(Xs, Ys) :- Ys is a permutation of the list Xs. 
%%

%TWTYPES     :- type perm(list,list).

perm([], []).
perm(Xs, [X | Ys]) :- app(X1s, [X | X2s], Xs), app(X1s, X2s, Zs), perm(Zs, Ys).


%TWTYPES     :- type app(list,list,list).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
	app(Xs,Ys,Zs).



/*TWDESC

 perm(Xs, Ys) :- Ys is a permutation of the list Xs.

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

query(perm(b,f,f,f)).
query(perm(f,b,f,f)).
query(app(b,f,f,f,f,f)).
query(app(f,b,f,f,f,f)).
query(app(f,f,f,f,b,f)).
query(app(f,f,f,f,f,b)).


*/
