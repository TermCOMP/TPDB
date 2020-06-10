%query: len1(i,o).
%% len1(Xs, X) :- X is the length of the list Xs.
%%

%TWTYPES     :- type len1(list,nat).

len1([], 0).
len1([_ | Ts], N) :- len1(Ts, M), eq(N,s(M)).

%TWTYPES :- type eq(nat,nat).

eq(X,X).



/*TWDESC

 len1(Xs, X) :- X is the length of the list Xs.

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

query(len1(b,f,f,f,f,f)).
query(len1(f,f,b,f,f,f)).


*/
