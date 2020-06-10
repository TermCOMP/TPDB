% Author: Thomas Stroeder
% terminating



%query: div(i,i,o).

div(0,Y,0) :- no(zero(Y)).

div(X,Y,s(Z)) :- no(zero(X)), no(zero(Y)), minus(X,Y,U), div(U,Y,Z).


minus(0,Y,0).

minus(X,0,X).

minus(s(X),s(Y),Z) :- minus(X,Y,Z).



zero(0).



no(X) :- X, !, failure(a).

no(_).



failure(b).
