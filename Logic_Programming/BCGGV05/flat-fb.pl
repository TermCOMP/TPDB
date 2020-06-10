%query: flat(o,i).
%TWTYPES :- type flat(list,list).

flat([],[]).
flat([[]|T],R) :- flat(T,R).
flat([[H|T]|TT], [H|R]) :- flat([T|TT],R).


/*TWDESC

flatten a list

*/


/*TWTYPES

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

selected_norms([list,list_2,poly]).

query(flat(b,b,f,f,f,f)).
query(flat(b,f,b,f,f,f)).
query(flat(b,f,f,b,f,f)).
query(flat(b,f,f,f,b,f)).
query(flat(f,b,f,f,f,f)).


*/
