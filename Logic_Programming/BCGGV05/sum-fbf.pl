%query: sum(o,i,o).
%% sum(X, Y, Z) :- X, Y, Z are numerals such that Z is the sum of X and Y.
%%

%TWTYPES     :- type sum(nat,nat,nat).

sum(X, 0, X).
sum(X, s(Y), s(Z)) :- sum(X, Y, Z).


/*TWDESC

sum(X, Y, Z) :- X, Y, Z are numerals such that Z is the sum of X and Y.

*/


/*TWTYPES

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([nat]).

query(sum(f,b,f)).
query(sum(f,f,b)).


*/
