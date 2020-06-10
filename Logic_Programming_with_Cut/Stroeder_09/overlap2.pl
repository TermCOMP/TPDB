% Adapted from LP/talp_apt/overlap.pl
% terminating

%query: overlap(i,i).
overlap(Xs,Ys) :- member(X,Xs), member(X,Ys).

member(X,Y) :- no(empty(Y)), head(Y,X).
member(X,Y) :- no(empty(Y)), tail(Y,T), member(X,T).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|T],T).

empty([]).

no(X) :- X, !, failure(a).
no(_).

failure(b).
