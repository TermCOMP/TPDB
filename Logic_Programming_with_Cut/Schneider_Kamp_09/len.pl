% Length of a list
% Author: Peter Schneider-Kamp
% terminating

%query: len(i,o).
len([],0) :- !.
len(Xs,s(N)) :- tail(Xs,Ys), len(Ys,N).

tail([],[]).
tail([X|Xs],Xs).
