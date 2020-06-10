% Adapted from LP/SGST06/blist.pl
% terminating

%query: goal(i).
goal(X) :- s2l(X,Xs), list(Xs).

list([]).
list(X) :- no(empty(X)), tail(X,T), list(T).

s2l(0,[]).
s2l(X,[_|Xs]) :- no(zero(X)), p(X,P), s2l(P,Xs).

tail([],[]).
tail([_|Xs],Xs).

p(0,0).
p(s(X),X).

empty([]).

zero(0).

no(X) :- X, !, failure(a).
no(_).

failure(b).
