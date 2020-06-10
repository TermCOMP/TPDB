% Length of a list
% Author: Thomas Stroeder

%query: len(i,o).
len([],X) :- !, eq(X,0).
len(Xs,s(N)) :- tail(Xs,Ys), len(Ys,N).

tail([],[]).
tail([X|Xs],Xs).

eq(X,X).
