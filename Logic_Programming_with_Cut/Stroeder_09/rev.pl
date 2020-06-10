% Author: Thomas Stroeder
% terminating

%query: rev(i,o).
rev(L,R) :- rev(L,[],R).

rev([],Y,Z) :- !, eq(Y,Z).
rev(L,S,R) :- head(L,X), tail(L,T), rev(T,[X|S],R).

head([],_).
head([X|_],X).

tail([],[]).
tail([_|Xs],Xs).

eq(X,X).
