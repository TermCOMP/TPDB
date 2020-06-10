% Example for existential termination with built-in predicates
% Terminating
% Author: Thomas Stroeder

%query: q(o).
q(X) :- once(p(X)).
p(0).
p(s(X)) :- p(X).