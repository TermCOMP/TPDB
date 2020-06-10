% Adapted from LP/SGST06/blist.pl
% terminating

%query: goal(i).
goal(X) :- s2l(X,Xs), list(Xs).

list([]) :- !.
list(X) :- tail(X,T), list(T).

s2l(0,L) :- !, eq(L,[]).
s2l(X,[_|Xs]) :- p(X,P), s2l(P,Xs).

tail([],[]).
tail([_|Xs],Xs).

p(0,0).
p(s(X),X).

eq(X,X).
