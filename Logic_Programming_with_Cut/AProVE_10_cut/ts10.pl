% Non-terminating example to show importance of conditions on PARALLEL
% Author: Thomas Stroeder

%query: p.
p :- q,!.
p :- p.
q :- !, failure(a).
q.
failure(b).