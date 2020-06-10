% Adapted from LP/SGST06/quot.pl
% terminating

%query: div(i,i,o).
div(X,Y,Z) :- quot(X,Y,Y,Z).

quot(0,s(Y),s(Z),0).
quot(X,0,s(Z),s(U)) :- quot(X,s(Z),s(Z),U).
quot(X,Y,Z,U) :- no(zero(X)), no(zero(Y)), p(X,Px), p(Y,Py), quot(Px,Py,Z,U).

p(0,0).
p(s(X),X).

zero(0).

no(X) :- X, !, failure(a).
no(_).

failure(b).
