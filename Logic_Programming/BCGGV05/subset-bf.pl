%query: subset(i,o).
%% subset(Xs, Ys) :- each element of the list Xs is a member of the list Ys. 
%%

%TWTYPES     :- type subset(list,list).

subset([], _).
subset([X | Xs], Ys) :- member(X, Ys), subset(Xs, Ys).


%TWTYPES     :- type member(poly,list).

member(X, [X | _]).
member(X, [_ | Xs]) :- member(X, Xs).


/*TWDESC

subset(Xs, Ys) :- each element of the list Xs is a member of the list Ys. 

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

query(subset(b,f,b,f)).
query(subset(b,f,f,b)).
query(subset(f,b,b,f)).
query(subset(f,b,f,b)).
query(member(f,f,b,f)).
query(member(f,f,f,b)).

*/
