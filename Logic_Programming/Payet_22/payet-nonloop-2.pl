% The following mode is lasso-looping.
%query: p(i,i).
p(0, Y) :- p(s(Y), s(Y)).
p(s(X), Y) :- q(X), p(X, Y).
q(0).
q(s(_)).
