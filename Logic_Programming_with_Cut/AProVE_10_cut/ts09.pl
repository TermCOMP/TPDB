% Example for late cuts.
% Author: Thomas Stroeder

%query: p.
p :- q, r, !.
q.
q :- q.
r.