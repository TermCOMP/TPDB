%query: ms(o,i).
%% ms(Xs, Ys) :- Ys is an ordered permutation of the list Xs. 
%%

%TWTYPES :- type ms(listn,listn).

ms([], []).
ms([X], [X]).
ms([X, Y | Xs], Ys) :-
	split([X, Y | Xs], X1s, X2s),
	ms(X1s, Y1s),
	ms(X2s, Y2s),
	merge(Y1s, Y2s, Ys).

%TWTYPES :- type split(listn,listn,listn).

split([], [], []).
split([X | Xs], [X | Ys], Zs) :- split(Xs, Zs, Ys).


%TWTYPES :- type merge(listn,listn,listn).

merge([], Xs, Xs).
merge(Xs, [], Xs).
merge([X | Xs], [Y | Ys], [X | Zs]) :-
	less(X,s(Y)),
	merge(Xs,[Y | Ys], Zs).
merge([X | Xs], [Y | Ys], [Y | Zs]) :-
	less(Y,X),
	merge([X | Xs], Ys, Zs).



%TWTYPES     :- type less(nat,nat).

less(0, s(_)).
less(s(X), s(Y)) :- less(X, Y).



/*TWDESC

 ms(Xs, Ys) :- Ys is an ordered permutation of the list Xs. 

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

settings([widenk=4]).
selected_norms([listn,nat]).


query(ms(f,b,f,f)).
query(split(b,f,f,f,f,f)).
query(split(f,b,f,f,f,f)).
query(merge(b,b,b,f,f,f)).
query(merge(b,b,f,b,f,f)).
query(merge(b,b,f,f,b,f)).
query(merge(b,b,f,f,f,b)).
query(merge(b,f,f,b,f,f)).
query(merge(b,f,f,f,f,b)).
query(merge(f,b,b,f,f,f)).
query(merge(f,b,f,b,f,f)).
query(merge(f,b,f,f,b,f)).
query(merge(f,b,f,f,f,b)).
query(merge(f,f,f,b,b,f)).
query(merge(f,f,f,b,f,b)).
query(merge(f,f,f,f,f,b)).
query(less(f,b,f,f)).
query(less(f,f,f,b)).


*/
