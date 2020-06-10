% Adapted from LP/SGST06/gopher.pl
% terminating

%query: gopher(i,o).
gopher(nil,nil).
gopher(X,cons(nil,T)) :- no(empty(X)), head(X,nil), tail(X,T).
gopher(X,Y) :- no(empty(X)),
               head(X,H),
               no(empty(H)),
               head(H,U),
               tail(H,V),
               tail(X,W),
               gopher(cons(U,cons(V,W)),Y).

head([],_).
head([X|_],X).

tail([],[]).
tail([_|X],X).

empty([]).

no(X) :- X, !, failure(a).
no(_).

failure(b).
