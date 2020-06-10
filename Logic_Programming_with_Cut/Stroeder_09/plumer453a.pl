% Adapted from talp_plumer/pl4.5.3a.pl
% terminating

%query: p(i).
p(b).
p(a) :- p1(X).

p1(b) :- !.
p1(a) :- p1(X).