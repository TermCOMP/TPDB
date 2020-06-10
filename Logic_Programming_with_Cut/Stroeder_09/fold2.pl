% Adapted from LP/talp_apt/fold.pl
% terminating

%query: fold(i,i,o).
fold(X,[],X).
fold(X,Y,Z) :- no(empty(Y)), head(Y,H), tail(Y,T), myop(X,H,V), fold(V,T,Z).

myop(a,b,c).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|T],T).

empty([]).

no(X) :- X, !, failure(a).
no(_).

failure(b).
