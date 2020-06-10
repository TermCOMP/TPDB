% Author: Thomas Stroeder
% terminating

%query: app(i,o,o).
app([],Y,Z) :- !, eq(Y,Z).
app(X,Y,[H|Z]) :- head(X,H), tail(X,T), app(T,Y,Z).

head([],_).
head([X|_],X).

tail([],[]).
tail([_|Xs],Xs).

eq(X,X).
