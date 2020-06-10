%query: p(i).

% mode: p[i]
p(a).
p(X) :- p(a).

% mode: q[i]
q(b).

% goal :- p(X),q(X).
