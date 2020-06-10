%query: select(o,i,o).
%% select(X, Xs, Zs) :- Zs is the result of deleting one occurrence of X
%%                      from the list Xs. 

%TWTYPES     :- type select(poly,list,list).

select(X, [X | Xs], Xs).
select(X, [Y | Xs], [Y | Zs]) :- select(X, Xs, Zs).



/*TWDESC

 select(X, Xs, Zs) :- Zs is the result of deleting one occurrence of X
                      from the list Xs. 

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

query(select(f,f,b,f,f,f)).
query(select(f,f,f,b,f,f)).
query(select(f,f,f,f,b,f)).
query(select(f,f,f,f,f,b)).

*/
