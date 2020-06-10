% Adapted from LP/talp_dds/duplicate.pl
% terminating

%query: duplicate(i,o).
duplicate([],L) :- !, eq(L,[]).
duplicate(X,[H|[H|Z]]) :- head(X,H), tail(X,T), duplicate(T,Z).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|T],T).

eq(X,X).
