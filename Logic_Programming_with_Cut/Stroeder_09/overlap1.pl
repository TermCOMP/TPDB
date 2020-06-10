% Adapted from LP/talp_apt/overlap.pl
% terminating

%query: overlap(i,i).
overlap(Xs,Ys) :- member(X,Xs), member(X,Ys).

member(_,[]) :- !, failure(a).
member(X,Y) :- head(Y,X).
member(X,Y) :- tail(Y,T), member(X,T).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|T],T).

failure(b).
