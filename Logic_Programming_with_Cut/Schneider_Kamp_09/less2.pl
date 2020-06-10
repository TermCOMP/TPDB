% Less than
% Author: Peter Schneider-Kamp
% terminating

%query: less(i,o).
less(0,Y) :- !, Y = s(_).
less(X,Y) :- p(X,X1), p(Y,Y1), less(X1, Y1).

p(0,0).
p(s(X),X).

=(X,X).