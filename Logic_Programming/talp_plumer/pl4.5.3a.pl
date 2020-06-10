%query: p(i).

% mode: p[i]
p(b).
p(a) :- p1(X).

% mode: p1[o]
p1(b).
p1(a) :- p1(X).
