% Author: Thomas Stroeder
% terminating

%query: num(i).
num(0) :- !.
num(X) :- p(X,Y), num(Y).

p(0,0).
p(s(X),X).