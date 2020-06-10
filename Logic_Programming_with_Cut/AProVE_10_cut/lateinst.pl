% Example for late instantiation
% Terminating
% Author: Thomas Stroeder

%query: p(o,o,o).
p(X,X,a) :- !.
p(X,Y,Z) :- eq(Z,a), eq(X,Y), p(X,Y,Z).
eq(X,X).