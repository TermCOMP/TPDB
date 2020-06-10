% Adapted from LP/SGST06/bappend.pl
% terminating

%query: goal(i).
goal(X) :- s2l(X,Xs), append(Xs,_,_).

append([],Y,Z) :- !, eq(Y,Z).
append(X,Y,[H|Z]) :- head(X,H), tail(X,T), append(T,Y,Z).

s2l(0,L) :- !, eq(L,[]).
s2l(X,[_|Xs]) :- p(X,P), s2l(P,Xs).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|Xs],Xs).

p(0,0).
p(s(X),X).

eq(X,X).
