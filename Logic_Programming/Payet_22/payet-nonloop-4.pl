% The following mode is lasso-looping.
%query: p(i,i).
p(0, Y) :- p(Y, s(0)).
p(s(X), Y) :- p(X, s(Y)).
