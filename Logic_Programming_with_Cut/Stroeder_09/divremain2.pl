% Division with remainder
% Author: Thomas Stroeder
% terminating

%query: div(i,i,o,o).
div(_,0,_,_) :- failure(a).
div(0,Y,0,0) :- no(zero(Y)).
div(X,Y,s(Z),R) :- no(zero(X)), no(zero(Y)), minus(X,Y,U), !, div(U,Y,Z,R).
div(X,Y,_,X) :- no(zero(X)), no(zero(Y)).

minus(X,0,X).
minus(s(X),s(Y),Z) :- minus(X,Y,Z).

failure(b).

zero(0).

no(X) :- X, !, failure(a).
no(_).
