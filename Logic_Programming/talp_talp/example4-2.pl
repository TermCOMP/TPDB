%query: p2(o).
% terminiert:


% mode: p1[i]
p1(f(X)) :- p1(X).

% terminiert nicht:
% mode: p2[o]
p2(f(X)) :- p2(X).
