%query: app(o,o,i).
%% app(Xs, Ys, Zs) :- Zs is the result of concatenating the lists Xs and Ys.
%%

%TWTYPES     :- type app(list,list,list).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
	app(Xs,Ys,Zs).



/*TWDESC

app(Xs, Ys, Zs) :- Zs is the result of concatenating the lists Xs and Ys.

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

*/

