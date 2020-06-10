% Example for existential termination
% Authors: Peter Schneider-Kamp and Thomas Stroeder
% terminating for finite queries / non-terminating for infinite queries

%query: q(o).
q(X) :- p(X), !.
p(0).
p(s(X)) :- p(X).