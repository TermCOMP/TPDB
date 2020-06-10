% Length of a list
% Author: Thomas Stroeder

%query: len(i,o).
len([],0).
len(Xs,s(N)) :- no(empty(Xs)), tail(Xs,Ys), len(Ys,N).

tail([],[]).
tail([X|Xs],Xs).

empty([]).

no(X) :- X, !, failure(a).
no(_).

failure(b).
