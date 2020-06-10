% Example for linear (terminating) vs. non-linear (non-terminating) queries.
% This one is linear and terminating.
% Author: Thomas Stroeder

%query: q.
q :- p(X,Y).
p(a,b) :- !.
p(a,a) :- p(a,a).