%query: ordered(i).
%% ordered(Xs) :- Xs is an lte-ordered list of integers. 
%%

%TWTYPES :- type ordered(listn).

ordered([]).
ordered([_]).
ordered([X, Y | Xs]) :- less(X,s(Y)), ordered([Y| Xs]).

%TWTYPES :- type less(nat,nat).

less(0, s(_)).
less(s(X), s(Y)) :- less(X, Y).



/*TWDESC

ordered(Xs) :- Xs is an lte-ordered list of integers.

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

query(ordered(f,b)).
query(less(f,b,f,f)).
query(less(f,f,f,b)).

*/
