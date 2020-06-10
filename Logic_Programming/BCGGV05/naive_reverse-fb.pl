%query: rev(o,i).
%% rev(Xs, Ys) :- Ys is the result of reversing the list Xs. 
%%

%TWTYPES     :- type rev(list,list).

rev([], []).
rev([X | Xs], Ys) :- rev(Xs, Zs), app(Zs, [X], Ys).

%TWTYPES     :- type app(list,list,list).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
	app(Xs,Ys,Zs).


/*TWDESC

 rev(Xs, Ys) :- Ys is the result of reversing the list Xs. 

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

query(rev(b,f,f,f)).
query(rev(f,b,f,f)).
query(app(b,f,f,f,f,f)).
query(app(f,b,f,f,f,f)).
query(app(f,f,f,f,b,f)).
query(app(f,f,f,f,f,b)).


*/

