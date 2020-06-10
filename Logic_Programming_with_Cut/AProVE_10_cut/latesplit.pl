% Example for late splitting
% Terminating
% Author: Thomas Stroeder

%query: q(o).
q(X) :- p(s(s(0)),X),r(X).
p(0,0).
p(s(X),s(Y)) :- p(X,Y).
r(s(s(0))) :- !.
r(X) :- r(X).