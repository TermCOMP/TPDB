%query: parse(i,o).

/* variant of example from toplas collection
 * using cons and nil instead of [_|_] and []
 */


%TWTYPES :- type parse(list,symbol).

parse(Xs,T) :-
 app(As,cons(a,cons(s(A,B,C),cons(b,Bs))),Xs),
 app(As,cons(s(a,s(A,B,C),b),Bs),Ys),
 parse(Ys,T).

parse(Xs,T) :-
 app(As,cons(a,cons(s(A,B),cons(b,Bs))),Xs),
 app(As,cons(s(a,s(A,B),b),Bs),Ys),
 parse(Ys,T).

parse(Xs,T) :-
 app(As,cons(a,cons(b,Bs)),Xs),
 app(As,cons(s(a,b),Bs),Ys),
 parse(Ys,T).

parse(cons(s(A,B),nil),s(A,B)).
parse(cons(s(A,B,C),nil),s(A,B,C)).



%TWTYPES     :- type app(list,list,list).

app(nil,X,X).
app(cons(X,Xs),Ys,cons(X,Zs)) :-
	app(Xs,Ys,Zs).



/*TWDESC

 bottom-up parser

*/


/*TWTYPES

list([]).
list([X|Xs]) :-
	symbol(X),
	list(Xs).

symbol(a).
symbol(b).
symbol(s(X,Y)) :- symbol(X), symbol(Y).
symbol(s(X,Y,Z)) :- symbol(X), symbol(Y), symbol(Z).

*/


/*TWDEMO

selected_norms([list,symbol]).

query(parse(b,f,f,f)).
query(app(b,f,f,f,f,f)).
query(app(f,b,f,f,f,f)).
query(app(f,f,f,f,b,f)).
query(app(f,f,f,f,f,b)).

*/

