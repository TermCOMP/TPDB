% Example for difference between built-in and self-defined AND
% Non-terminating
% Author: Thomas Stroeder

%query: p.
p :- q(and(r,!)).
q(X) :- X.
r.
r :- r.
and(X,Y) :- X,Y.