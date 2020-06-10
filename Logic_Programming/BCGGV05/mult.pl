%query: mult(i,i,o).
%% mult(X, Y, Z) :- X, Y, Z are numerals such that Z is the product of X and Y. 
%%

%TWTYPES     :- type mult(nat,nat,nat).

mult(_, 0, 0).
mult(X, s(Y), Z) :- mult(X, Y, W), sum(W, X, Z).


%TWTYPES     :- type sum(nat,nat,nat).

sum(X, 0, X).
sum(X, s(Y), s(Z)) :- sum(X, Y, Z).


/*TWDESC

mult(X, Y, Z) :- X, Y, Z are numerals such that Z is the product of X and Y.

*/


/*TWTYPES

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([nat]).

query(mult(b,b,f)).
query(sum(f,b,f)).
query(sum(f,f,b)).

*/
