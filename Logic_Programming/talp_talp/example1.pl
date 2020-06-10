%query: p(i,o).
% terminiert nicht:


% mode: p[i,o]
p(X, g(X)).
p(X, f(Y)) :- p(X, g(Y)).
