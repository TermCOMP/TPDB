% Adapted from LP/talp_apt/select1.pl
% terminating

%query: select(i,i,o).
select(X,Y,Zs) :- no(empty(Y)), head(Y,X), tail(Y,Zs).
select(X,Y,Z) :- no(empty(Y)), head(Y,H), head(Z,H), tail(Y,T), tail(Z,Zs), select(X,T,Zs).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|T],T).

empty([]).

no(X) :- X, !, failure(a).
no(_).

failure(b).
