% Adapted from LP/SGST06/quot.pl
% terminating

%query: div(i,i,o).
div(X,Y,Z) :- quot(X,Y,Y,Z).

quot(0,s(Y),s(Z),R) :- !, eq(R,0).
quot(X,0,Z,U) :- !, eq(Z,s(_)), p(U,P), quot(X,Z,Z,P).
quot(s(X),Y,Z,U) :- p(Y,P), quot(X,P,Z,U).

p(0,0).
p(s(X),X).

eq(X,X).
