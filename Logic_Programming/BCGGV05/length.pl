%query: len(i,o).
%% len(Xs, X) :- X is the length of the list Xs.
%%

%TWTYPES     :- type len(list,nat).

len([], 0).
len([_ | Ts], s(N)) :- len(Ts, N).


/*TWDESC

 len(Xs, X) :- X is the length of the list Xs.

*/


/*TWTYPES

list([]).
list([X|Xs]) :-
	poly(X),
	list(Xs).

poly(dummy).

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([list,nat,poly]).

query(len(b,f,f,f,f,f)).
query(len(f,f,b,f,f,f)).
query(len(f,f,f,f,b,f)).

*/

