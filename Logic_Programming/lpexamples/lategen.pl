% Example for late generalization
% Terminating
% Author: Thomas Stroeder

%query: q.
q :- p(s(s(0))).
p(s(X)) :- p(X).
p(0).
p(s(s(s(0)))) :- p(s(s(s(0)))).