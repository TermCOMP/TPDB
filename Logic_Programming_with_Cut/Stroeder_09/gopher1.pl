% Adapted from LP/SGST06/gopher.pl
% terminating

%query: gopher(i,o).
gopher(nil,L) :- !, eq(L,nil).
gopher(X,Y) :- head(X,nil), !, tail(X,T), eq(Y,cons(nil,T)).
gopher(X,Y) :- head(X,H), head(H,U), tail(H,V), tail(X,W), gopher(cons(U,cons(V,W)),Y).

head([],_).
head([X|_],X).

tail([],[]).
tail([_|X],X).

eq(X,X).
