%query: palindrome(i).
%% palindrome(Xs) :- the list Xs equals to its reverse.
%%

%TWTYPES     :- type palindrome(list).

palindrome(Xs) :- reverse(Xs, Xs).

%TWTYPES     :- type reverse(list,list).

reverse(X1s, X2s) :- reverse(X1s, [], X2s).

%TWTYPES     :- type reverse(list,list,list).

reverse([], Xs, Xs).
reverse([X | X1s], X2s, Ys) :- reverse(X1s, [X | X2s], Ys).


/*TWDESC

 palindrome(Xs) :- the list Xs equals to its reverse.

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


query(palindrome(b,f)).
query(palindrome(f,b)).
query(reverse(b,f,f,f,f,f)).
query(reverse(f,b,f,f,f,f)).
query(reverse(b,f,f,f)).
query(reverse(f,b,f,f)).

*/

