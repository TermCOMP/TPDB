% Example for term equality
% Terminating
% Author: Thomas Stroeder

%query: q(o,o).
q(X,Y) :- X == Y, p(X,Y).
p(X,Y) :- X == Y, !.
p(X,Y) :- p(X,Y).
