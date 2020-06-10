%query: member(o,i).
%% member(Element, List) :- Element is an element of the list List. 
%%

%TWTYPES     :- type member(poly,list).

member(X, [X | _]).
member(X, [_ | Xs]) :- member(X, Xs).



/*TWDESC

member(Element, List) :- Element is an element of the list List.

*/


/*TWTYPES

list([]).
list([X|Xs]) :-
	poly(X),
	list(Xs).

poly(dummy).
*/


/*TWDEMO

selected_norms([list,poly]).

query(member(f,f,b,f)).
query(member(f,f,f,b)).

*/
