%query: qs(i,o).



%% qs(Xs, Ys) :- Ys is an ordered permutation of the list Xs.
%%

%TWTYPES     :- type qs(listn,listn).

qs([], []).
qs([X | Xs], Ys) :-
	part(X, Xs, Littles, Bigs),
	qs(Littles, Ls),
	qs(Bigs, Bs),
	app(Ls, [X | Bs], Ys).

%TWTYPES     :- type part(nat,listn,listn,listn).

part(X, [Y | Xs], [Y | Ls], Bs) :-  less(X,Y), part(X, Xs, Ls, Bs).
part(X, [Y | Xs], Ls, [Y | Bs]) :-  part(X, Xs, Ls, Bs).
part(_, [], [], []).


%TWTYPES     :- type app(listn,listn,listn).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
	app(Xs,Ys,Zs).

%TWTYPES :- type less(nat,nat).

less(0, s(_)).
less(s(X), s(Y)) :- less(X, Y).

/*TWDESC

qs(Xs, Ys) :- Ys is an ordered permutation of the list Xs.

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

query(app(b,f,f,f,f,f)).
query(app(f,b,f,f,f,f)).
query(app(f,f,f,f,b,f)).
query(app(f,f,f,f,f,b)).
query(part(f,f,b,f,f,f,f,f)).
query(part(f,f,f,b,f,f,f,f)).
query(part(f,f,f,f,b,f,b,f)).
query(part(f,f,f,f,b,f,f,b)).
query(part(f,f,f,f,f,b,b,f)).
query(part(f,f,f,f,f,b,f,b)).
query(qs(b,f,f,f)).
query(qs(f,b,f,f)).
query(less(f,b,f,f)).
query(less(f,f,f,b)).

*/
