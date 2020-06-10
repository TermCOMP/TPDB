% Author: Thomas Stroeder
% terminating

%query: list(i).
list([]).
list(X) :- no(empty(X)), tail(X,T), list(T).

tail([],[]).
tail([X|Xs],Xs).

empty(X).

no(X) :- X, !, failure(a).
no(_).

failure(b).

