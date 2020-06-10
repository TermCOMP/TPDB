%query: reverse(i,o).
%% reverse(Xs, Ys) :- Ys is the reverse of the list Xs.
%%


%TWTYPES     :- type reverse(list,list).

reverse(X1s, X2s) :- reverse(X1s, [], X2s).

%TWTYPES     :- type reverse(list,list,list).

reverse([], Xs, Xs).
reverse([X | X1s], X2s, Ys) :- reverse(X1s, [X | X2s], Ys).




/*TWDESC

 reverse(Xs, Ys) :- Ys is the reverse of the list Xs.

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

query(reverse(b,f,f,f,f,f)).
query(reverse(f,b,f,f,f,f)).
query(reverse(b,f,f,f)).
query(reverse(f,b,f,f)).

*/

