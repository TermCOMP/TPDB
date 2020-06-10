%query: fl(o,i,o).
%TWTYPES :- type fl(list,list,nat).

fl([],[],0).
fl([E|X],R,s(Z)) :-
        append(E,Y,R),
        fl(X,Y,Z).


%TWTYPES :- type append(list,list,list).

append([],X,X).
append([X|Xs],Ys,[X|Zs]) :-
        append(Xs,Ys,Zs).


/*TWDESC

flatten a list

*/


/*TWTYPES

nat(0).
nat(s(X)) :- nat(X).

list([]).
list([X|Xs]) :-
	list_2(X),
	list(Xs).

list_2([]).
list_2([X|Xs]) :-
	poly(X),
	list_2(Xs).

poly(dummy).
*/


/*TWDEMO

selected_norms([poly]).

query(fl(b,b,f,f,f,f,f,f,f,f,f,f)).
query(fl(b,f,f,f,b,f,f,f,f,f,f,f)).
query(fl(b,f,f,f,f,b,f,f,f,f,f,f)).
query(fl(f,b,f,f,f,f,f,f,f,f,f,f)).
query(fl(f,f,f,f,b,f,f,f,f,f,b,f)).
query(fl(f,f,f,f,f,b,f,f,f,f,b,f)).



*/
