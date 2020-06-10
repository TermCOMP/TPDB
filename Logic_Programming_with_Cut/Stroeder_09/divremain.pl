% Division with remainder
% Author: Thomas Stroeder
% terminating

%query: div(i,i,o,o).
div(_,0,_,_) :- !, failure(a).
div(0,_,Z,R) :- !, eq(Z,0), eq(R,0).
div(X,Y,s(Z),R) :- minus(X,Y,U), !, div(U,Y,Z,R).
div(X,_,_,X).

minus(X,0,X).
minus(s(X),s(Y),Z) :- minus(X,Y,Z).

failure(b).

eq(X,X).