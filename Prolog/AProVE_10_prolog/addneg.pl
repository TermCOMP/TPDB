% Example for addition using built-in negation
% Terminating
% Author: Thomas Stroeder

%query: add(o,i,o).
add(X,0,X).
add(X,Y,s(Z)) :- \+(isZero(Y)),p(Y,P),add(X,P,Z).
p(0,0).
p(s(X),X).
isZero(0).