% Example for the importance of considering the position of a cut in a conjunction.
% Author: Thomas Stroeder
% terminating

%query: p
p :- r.
r :- q, !.
r :- q.
q.
q :- r.