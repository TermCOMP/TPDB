%query: suffix(i,o).
%% suffix(Xs, Ys) :- Xs  is a suffix of the list Ys. 
%%

%TWTYPES     :- type suffix(list,list).

suffix(Xs, Ys) :- app(_, Xs, Ys).


%TWTYPES     :- type app(list,list,list).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
	app(Xs,Ys,Zs).



/*TWDESC

 suffix(Xs, Ys) :- Xs  is a suffix of the list Ys.

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

query(suffix(f,f,b,f)).
query(suffix(f,f,f,b)).
query(app(b,f,f,f,f,f)).
query(app(f,b,f,f,f,f)).
query(app(f,f,f,f,b,f)).
query(app(f,f,f,f,f,b)).


*/

