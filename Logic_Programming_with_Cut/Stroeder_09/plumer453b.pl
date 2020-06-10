% Adapted from talp_plumer/pl4.5.3b.pl
% terminating

%query: f(o).
f(X) :- p(X),q(X).

p(a).
p(X) :- p(a), !.

q(b).