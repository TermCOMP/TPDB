%query: f(i).

/* another example for incompleteness of our implementation */

f(X) :- g(s(s(s(X)))).
f(s(X)) :- f(X).
g(s(s(s(s(X))))) :- f(X).
