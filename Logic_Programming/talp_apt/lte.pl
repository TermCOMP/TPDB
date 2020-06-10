%query: goal.

% mode: even[i]
even(s(s(X))) :- even(X).
even(0).

% mode: lte[o,i]
lte(s(X),s(Y)) :- lte(X,Y).
lte(0,Y).

% mode: goal[]
goal :- lte(X,s(s(s(s(0))))), even(X).
