%query: ss(o,i).
%% ss(Xs, Ys) :- Ys is an ordered permutation of the list Xs. 
%%

%TWTYPES     :- type ss(listn,listn).

ss(Xs, Ys) :- perm(Xs, Ys), ordered(Ys).

%TWTYPES     :- type perm(listn,listn).

perm([], []).
perm(Xs, [X | Ys]) :- app(X1s, [X | X2s], Xs), app(X1s, X2s, Zs), perm(Zs, Ys).


%TWTYPES     :- type app(listn,listn,listn).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
	app(Xs,Ys,Zs).


%TWTYPES :- type ordered(listn).

ordered([]).
ordered([_]).
ordered([X, Y | Xs]) :- less(X,s(Y)), ordered([Y| Xs]).

%TWTYPES :- type less(nat,nat).

less(0, s(_)).
less(s(X), s(Y)) :- less(X, Y).

/*TWDESC

ss(Xs, Ys) :- Ys is an ordered permutation of the list Xs.

*/


/*TWTYPES

listn([]).
listn([X|Xs]) :-
        nat(X),
        listn(Xs).

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([listn,nat]).


query(ss(b,b,f,f)).
query(ss(b,f,f,b)).
query(ss(f,b,f,f)).
query(less(f,b,f,f)).
query(less(f,f,f,b)).
query(ordered(f,b)).
query(app(b,f,f,f,f,f)).
query(app(f,b,f,f,f,f)).
query(app(f,f,f,f,b,f)).
query(app(f,f,f,f,f,b)).
query(perm(b,f,f,f)).
query(perm(f,b,f,f)).


*/
