%query: t(i).
%TWTYPES :- type t(nat).

t(N) :-
        ll(N,Xs),
        select(_,Xs,Xs1),
        ll(M,Xs1),
        t(M).
t(0).


%TWTYPES :- type ll(nat,list).

ll(s(N),[X|Xs]) :- ll(N,Xs).
ll(0,[]).

%TWTYPES :- type select(poly,list,list).

select(X,[Y|Xs],[Y|Ys]) :-
        select(X,Xs,Ys).
select(X,[X|Xs],Xs).



/*TWDESC

 Contrived example

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

selected_norms([list,poly,nat]).


query(t(f,b,f)).
query(ll(f,b,f,f,f,f)).
query(ll(f,f,f,b,f,f)).
query(ll(f,f,f,f,f,b)).
query(select(f,f,f,b,f,f,f,f,f)).
query(select(f,f,f,f,f,b,f,f,f)).
query(select(f,f,f,f,f,f,b,f,f)).
query(select(f,f,f,f,f,f,f,f,b)).


*/

