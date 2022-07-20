% The following mode is lasso-looping.
%query: p(i,i,i).
p(0, Y, s(_)) :- p(Y, s(0), s(0)).
p(s(X), Y, Z) :- p(X, s(Y), Z).
