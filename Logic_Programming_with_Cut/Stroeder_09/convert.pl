% Adapted from LP/SGST06/convert.pl
% terminating

%query: convert(i,i,o).
convert([],_,Z) :- !, eq(Z,0).
convert(X,Y,Z) :- head(X,0), !, tail(X,T), convert(T,Y,U), times(U,Y,Z).
convert(X,Y,Z) :- head(X,H), p(H,P), tail(X,T), convert([P|T],Y,U), p(Z,U), !.

times(0,Y,Z) :- !, eq(Z,0).
times(X,Y,Z) :- p(X,P), times(P,Y,U), plus(Y,U,Z).

plus(0,Y,Z) :- !, eq(Y,Z).
plus(X,Y,Z) :- p(X,P), plus(P,Y,U), p(Z,U), !.

head([],_).
head([H|_],H).

tail([],[]).
tail([_|Xs],Xs).

p(s(X),X).
p(0,0).

eq(X,X).
