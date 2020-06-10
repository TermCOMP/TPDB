% Difficult SPLIT example
% Author: Thomas Stroeder

%query: p(i).
p(0).
p(s(X)) :- q(X),!,r.
p(X) :- r.

q(0).
q(s(X)) :- p(X),!,r.
q(X) :- r.

r.