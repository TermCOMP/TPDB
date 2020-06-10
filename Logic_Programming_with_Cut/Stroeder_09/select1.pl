% Adapted from LP/talp_apt/select1.pl
% terminating

%query: select(i,i,o).
select(_,[],_) :- !, failure(a).
select(X,Y,Zs) :- head(Y,X), tail(Y,Zs).
select(X,Y,[H|Zs]) :- head(Y,H), tail(Y,T), select(X,T,Zs).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|T],T).

failure(b).
