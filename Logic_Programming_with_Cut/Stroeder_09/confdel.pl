% Adapted from LP/SGST06/confdel.pl
% terminating

%query: goal(i).
goal(X) :- s2l(X,Xs), conf(Xs).

conf(X) :- del2(X,Z), del(U,Y,Z), conf(Y).

del2(X,Y) :- del(U,X,Z), del(V,Z,Y).

del(_,[],_) :- !, failure(a).
del(H,X,T) :- head(X,H), tail(X,T).
del(X,Y,[H|T2]) :- head(Y,H), tail(Y,T1), del(X,T1,T2).

s2l(0,L) :- !, eq(L,[]).
s2l(X,[_|Xs]) :- p(X,P), s2l(P,Xs).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|Xs],Xs).

p(0,0).
p(s(X),X).

failure(b).

eq(X,X).
