%query: sublist(o,i).
%% sublist(Xs, Ys) :- Xs is a sublist of the list Ys. 
%%

%TWTYPES     :- type sublist(list,list).

sublist(Xs, Ys) :- app(_, Zs, Ys), app(Xs, _, Zs).

%TWTYPES     :- type app(list,list,list).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
	app(Xs,Ys,Zs).



/*TWDESC

sublist(Xs, Ys) :- Xs is a sublist of the list Ys.

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

query(app(b,f,f,f,f,f)).
query(app(f,b,f,f,f,f)).
query(app(f,f,f,f,b,f)).
query(app(f,f,f,f,f,b)).
query(sublist(f,f,b,f)).
query(sublist(f,f,f,b)).

*/

