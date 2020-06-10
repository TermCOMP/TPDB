% Example for term inequality
% Non-terminating
% Author: Thomas Stroeder

%query: q(o,o).
q(X,Y) :- X \== Y, p(X,Y).
p(X,X) :- p(X,X).
p(X,Y).
