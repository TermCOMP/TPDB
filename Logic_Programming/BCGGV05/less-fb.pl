%query: less(o,i).
%% less(X, Y) :- X, Y are numerals such that X lt Y.
%%


%TWTYPES     :- type less(nat,nat).

less(0, s(_)).
less(s(X), s(Y)) :- less(X, Y).



/*TWDESC

less(X, Y) :- X, Y are numerals such that X lt Y.

*/


/*TWTYPES

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([nat]).

query(less(b,f)).
query(less(f,b)).

*/
