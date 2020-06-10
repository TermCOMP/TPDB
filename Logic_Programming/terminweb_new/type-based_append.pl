%query: app(i,i,o).
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

poly([X]) :-
	poly_prime(X).

poly_prime(dummy).
*/


/*TWDEMO

selected_norms([list]).
*/
/*.

*/
