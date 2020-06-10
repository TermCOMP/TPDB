% Example for non-unification
% Terminating
% Author: Thomas Stroeder

%query: q(o,o).
q(X,Y) :- X \= Y, p(X,Y).
p(X,X) :- p(X,X).
p(X,Y).
