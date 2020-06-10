% Adapted from LP/SGST06/lessleaves.pl
% terminating

%query: lessleaves(i,i).
lessleaves(nil,cons(_,_)).
lessleaves(cons(U,V),cons(W,Z)) :- app(U,V,U1), app(W,Z,W1), lessleaves(U1,W1).

app(nil,Y,Z) :- !, eq(Y,Z).
app(X,Y,cons(U,Z)) :- head(X,U), tail(X,V), app(V,Y,Z).

head([],_).
head([X|_],X).

tail([],[]).
tail([_|X],X).

eq(X,X).
