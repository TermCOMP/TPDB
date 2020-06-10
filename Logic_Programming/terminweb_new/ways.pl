%query: ways(i,i,o).
nat(0).
nat(s(X)):- nat(X).

plus(0,X,X) :- nat(X).
plus(s(X),Y,s(Z)) :- plus(X,Y,Z).


%     version with termination bug fixed

ways(0,_,s(0)).
ways(_,[],0).

ways(Amount,[s(C)|Coins],N) :-
    Amount=s(_),
    plus(s(C),NewAmount,Amount),
    ways(Amount,Coins,N1),
    ways(NewAmount,[s(C)|Coins],N2),
    plus(N1,N2,N).

ways(Amount,[s(C)|Coins],N) :-
    Amount=s(_),
    plus(Amount,s(_),s(C)),
    ways(Amount,Coins,N).



/*TWDESC

ways/3, the number of ways to change a given amount of money using a 
fixed set of coins values

*/

/*TWDEMO

selected_norms([termsize_edges]).
settings([cm=poly_mc,widenk=2]).
*/
/*.

*/
