%query: goal(i).
p(a).
p(X) :- p(Y).

q(b).

goal(X) :- p(X), q(X).

