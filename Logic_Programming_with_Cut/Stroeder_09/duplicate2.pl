% Adapted from LP/talp_dds/duplicate.pl
% terminating

%query: duplicate(i,o).
duplicate([],[]).
duplicate(X,[H|[H|Z]]) :- no(empty(X)), head(X,H), tail(X,T), duplicate(T,Z).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|T],T).

empty([]).

no(X) :- X, !, failure(a).
no(_).

failure(b).
