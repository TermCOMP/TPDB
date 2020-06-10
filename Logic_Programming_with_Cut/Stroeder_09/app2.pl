% Author: Thomas Stroeder
% non-terminating for app([],X,[Y|X]) in the case of unification with occur check
% and app([],[_,[_,...],[_,[_,...]]]) in the case of unification without occur check

%query: app(i,o,o).
app([],L,L) :- !.
app(X,Y,[H|Z]) :- head(X,H), tail(X,T), app(T,Y,Z).

head([],_).
head([X|_],X).

tail([],[]).
tail([_|Xs],Xs).
