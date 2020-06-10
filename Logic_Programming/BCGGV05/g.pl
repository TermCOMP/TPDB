%query: g(o).
%TWTYPES :- type g(list_erk).

g(W) :-
        eq(X,[[a],[R]]),
        eq(Y,[[S,c],[]]),
        app_1(X,Y,Z),
        eq(Z,[U|V]),
        app_2(U,U,W).

%TWTYPES :- type app_1(list,list,list).

app_1([],X,X).
app_1([X|Xs],Ys,[X|Zs]) :-
	app_1(Xs,Ys,Zs).

%TWTYPES :- type app_2(list_erk,list_erk,list_erk).

app_2([],X,X).
app_2([X|Xs],Ys,[X|Zs]) :-
	app_2(Xs,Ys,Zs).


%TWTYPES :- type eq(list,list).

eq(X,X).

/*TWDESC

  stuckey's list_erk

*/


/*TWTYPES

list([]).
list([X|Xs]) :-
	list_erk(X),
	list(Xs).

list_erk([]).
list_erk([X|Xs]) :-
	erk(X),
	list_erk(Xs).

erk(a).
erk(c).
erk(b(X)) :- erk(X).

*/


/*TWDEMO

selected_norms([list,list_erk,erk]).
query(g(f,f,f)).

*/
