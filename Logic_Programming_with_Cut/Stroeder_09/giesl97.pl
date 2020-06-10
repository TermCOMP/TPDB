% Adapted from LP/SGST06/giesl97.pl
% terminating

%query: f(i,o,o).
f(0,Y,Z) :- !, eq(Z,0).
f(X,Y,Z) :- p(X,P), f(P,Y,U), f(U,Y,Z).

p(0,0).
p(s(X),X).

eq(X,X).