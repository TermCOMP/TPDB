% Author: Thomas Stroeder
% terminating

%query: ordered(i).
ordered([]) :- !.
ordered([_]) :- !.
ordered(Xs) :- head(Xs,X), tail(Xs,Ys), head(Ys,Y), tail(Ys,Zs), less(X,s(Y)), ordered([Y|Zs]).

head([],_).
head([X|_],X).

tail([],[]).
tail([_|Xs],Xs).

less(0,Y) :- !, eq(Y,s(_)).
less(X,Y) :- p(X,Px), p(Y,Py), less(Px,Py).

p(0,0).
p(s(X),X).

eq(X,X).