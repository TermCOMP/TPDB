%query: num(i).
%% num(X) :- X is a numeral.
%%

%TWTYPES     :- type num(nat).

num(0).
num(s(X)) :- num(X).


/*TWDESC

 num(X) :- X is a numeral.

*/


/*TWTYPES

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([nat]).
query(num(b)).

*/
