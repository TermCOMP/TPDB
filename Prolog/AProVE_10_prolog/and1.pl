% Example for difference between built-in and self-defined AND
% Terminating
% Author: Thomas Stroeder

%query: p.
p :- q(','(r,!)).
q(X) :- X.
r.
r :- r.