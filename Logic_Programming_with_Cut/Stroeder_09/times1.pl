% Adapted from LP/SGST06/times.pl
% terminating

%query: times(i,i,o).
times(X,Y,Z) :- mult(X,Y,0,Z).

mult(0,Y,0,Z) :- !, eq(Z,0).
mult(s(X),Y,0,Z) :- !, mult(X,Y,Y,Z).
mult(X,Y,W,s(Z)) :- p(W,P), mult(X,Y,P,Z).

p(0,0).
p(s(X),X).

eq(X,X).
