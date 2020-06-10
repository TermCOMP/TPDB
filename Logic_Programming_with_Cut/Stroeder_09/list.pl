% Author: Thomas Stroeder
% terminating

%query: list(i).
list([]) :- !.
list(X) :- tail(X,T), list(T).

tail([],[]).
tail([X|Xs],Xs).
