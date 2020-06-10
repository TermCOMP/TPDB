% Author: Peter Schneider-Kamp
% non-terminating for all queries

%query: p(o).
p(X) :- q(a),!.
p(X) :- p(X).
q(b).
