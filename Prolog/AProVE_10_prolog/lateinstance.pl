% Example for late instantiation with built-in unification
% Terminating
% Author: Thomas Stroeder

%query: p(o,o,o).
p(X,X,a) :- !.
p(X,Y,Z) :- Z = a, X = Y, p(X,Y,Z).