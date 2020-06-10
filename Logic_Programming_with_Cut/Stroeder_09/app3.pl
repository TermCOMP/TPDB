% Author: Thomas Stroeder
% terminating

%query: app(i,o,o).
app([],Y,Y).
app(X,Y,[H|Z]) :- no(empty(X)), head(X,H), tail(X,T), app(T,Y,Z).

head([],_).
head([X|_],X).

tail([],[]).
tail([_|Xs],Xs).

empty([]).

no(X) :- X, !, failure(a).
no(_).

failure(b).
