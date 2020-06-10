% Adapted from talp_plumer/pl3.5.6.pl
% terminating

%query: p(o).
p(X) :- l(X),!,q(X).
q([A]).
r(1).
l([]).
l([H|T]) :- r(H),l(T).