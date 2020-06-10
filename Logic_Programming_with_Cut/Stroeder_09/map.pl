% Adapted from LP/talp_apt/map1.pl
% terminating

%query: map(i,o).
map([],L) :- !, eq(L,[]).
map(X,[Y|Ys]) :- head(X,H), tail(X,T), p(H,Y), map(T,Ys).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|T],T).

p(X,Y).

eq(X,X).
