% Example for ignoring cuts in meta calls (non-terminating)
% Author: Thomas Stroeder

%query: q.
q :- p(!).
p(X) :- X, failure(a).
p(X) :- p(X).
failure(b).