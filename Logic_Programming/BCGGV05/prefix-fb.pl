%query: prefix(o,i).
%% prefix(Xs, Ys) :- Xs is a prefix of the list Ys. 
%%

%TWTYPES     :- type prefix(list,list).

prefix(Xs, Ys) :- app(Xs, _, Ys).

%TWTYPES     :- type app(list,list,list).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
	app(Xs,Ys,Zs).



/*TWDESC

 prefix(Xs, Ys) :- Xs is a prefix of the list Ys. 

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

query(prefix(b,f,f,f)).
query(prefix(f,b,f,f)).
query(prefix(f,f,b,f)).
query(prefix(f,f,f,b)).
query(app(b,f,f,f,f,f)).
query(app(f,b,f,f,f,f)).
query(app(f,f,f,f,b,f)).
query(app(f,f,f,f,f,b)).


*/

