%query: factor(i,o).
%TWTYPES :- type factor(listn,nat).

factor([X],X).
factor([X,Y|Xs],T) :- 
        times(X,Y,Z), 
        factor([Z|Xs],T).

%TWTYPES :- type times(nat,nat,nat).

times(0,X_,0).
times(s(X),Y,Z) :- 
        times(X,Y,XY), 
        plus(XY,Y,Z).


%TWTYPES :- type plus(nat,nat,nat).

plus(0,X,X).
plus(s(X),Y,s(Z)):- 
        plus(X,Y,Z).


/*TWDESC

factor

*/


/*TWTYPES

listn([]).
listn([X|Xs]) :-
        nat(X),
        listn(Xs).

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([listn,nat]).

query(factor(b,b,f,f)).
query(plus(f,b,f,f,f,f)).
query(plus(f,f,f,f,f,b)).
query(times(f,b,f,b,f,f)).

*/
