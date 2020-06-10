% Adapted from LP/talp_apt/fold.pl
% terminating

%query: fold(i,i,o).
fold(X,[],Z) :- !, eq(X,Z).
fold(X,Y,Z) :- head(Y,H), tail(Y,T), myop(X,H,V), fold(V,T,Z).

myop(a,b,a).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|T],T).

eq(X,X).
