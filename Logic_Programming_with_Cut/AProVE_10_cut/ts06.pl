% Example for linear (terminating) vs. non-linear (non-terminating) queries.
% This one is non-linear and non-terminating.
% Author: Thomas Stroeder

%query: q.
q :- p(X,X).
p(a,b) :- !.
p(a,a) :- p(a,a).