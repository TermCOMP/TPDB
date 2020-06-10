%query: list(i).
%% list(Xs) :-  Xs is a list. 
%%

%TWTYPES     :- type list(list).

list([]).
list([_ | Ts]) :- list(Ts).


/*TWDESC

 list(Xs) :-  Xs is a list.

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

query(list(b,f)).
query(list(f,b)).

*/

