%query: parse(i,o).

%TWTYPES :- type parse(list,symbol).

parse(Xs,T) :-
 app(As,[a,s(A,B,C),b|Bs],Xs),
 app(As,[s(a,s(A,B,C),b)|Bs],Ys),
 parse(Ys,T).

parse(Xs,T) :-
 app(As,[a,s(A,B),b|Bs],Xs),
 app(As,[s(a,s(A,B),b)|Bs],Ys),
 parse(Ys,T).

parse(Xs,T) :-
 app(As,[a,b|Bs],Xs),
 app(As,[s(a,b)|Bs],Ys),
 parse(Ys,T).

parse([s(A,B)],s(A,B)).
parse([s(A,B,C)],s(A,B,C)).



%TWTYPES     :- type app(list,list,list).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
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

