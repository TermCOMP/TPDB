% Author: Thomas Stroeder
% terminating

%query: rev(i,o).
rev(L,R) :- rev(L,[],R).

rev([],Y,Y).
rev(L,S,R) :- no(empty(L)), head(L,X), tail(L,T), rev(T,[X|S],R).

head([],_).
head([X|_],X).

tail([],[]).
tail([_|Xs],Xs).

empty([]).

no(X) :- X, !, failure(a).
no(_).

failure(b).
