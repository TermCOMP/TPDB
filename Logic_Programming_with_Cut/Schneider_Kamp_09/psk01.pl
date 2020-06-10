% Author: Peter Schneider-Kamp
% non-terminating

%query: p(o).
p(X) :- q(X).
p(X) :- p(X).
q(X) :- !.
