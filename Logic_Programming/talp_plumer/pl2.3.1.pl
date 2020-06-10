%query: p(i,o).

% mode: p[i,o]
p(X,Z) :- q(X,Y),p(Y,Z).
p(X,X).

% mode: q[i,o]
q(a,b).
