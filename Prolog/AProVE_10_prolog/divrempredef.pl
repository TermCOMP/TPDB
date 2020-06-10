% Example for division with remainder using built-in unification and failing
% Terminating
% Author: Thomas Stroeder

%query: div(i,i,o,o).
div(X,0,Z,R) :- !, fail.
div(0,Y,Z,R) :- !, Z = 0, R = 0.
div(X,Y,s(Z),R) :- minus(X,Y,U), !, div(U,Y,Z,R).
div(X,Y,0,X).
minus(X,0,X).
minus(s(X),s(Y),Z) :- minus(X,Y,Z).