%query: even(i).

% mode: even[i]
even(0).
even(s(X)) :- odd(X).

% mode: odd[i]
odd(s(X)) :- even(X).
