%query: max(o,o,i).
%% max(X, Y, Z) :- Z is the maximum of the integers X and Y. 
%%


%TWTYPES     :- type max(nat,nat,nat).

max(X, Y, X) :- less(Y,X).
max(X, Y, Y) :- less(X,s(Y)).

%TWTYPES     :- type less(nat,nat).

less(0, s(_)).
less(s(X), s(Y)) :- less(X, Y).



/*TWDESC

max(X, Y, Z) :- Z is the maximum of the integers X and Y.

*/


/*TWTYPES

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([nat]).


query(max(b,f,f)).
query(max(f,b,f)).
query(max(f,f,b)).
query(less(b,f)).
query(less(f,b)).
 
*/
