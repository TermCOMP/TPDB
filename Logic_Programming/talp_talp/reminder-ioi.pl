%query: rem(i,o,i).

% mode: rem[i,i,o]
rem(X, Y, R) :- notZero(Y), sub(X, Y, Z), rem(Z, Y, R). 
rem(X, Y, X) :- notZero(Y), geq(X, Y).

% mode: sub[i,i,o]
sub(s(X), s(Y), Z) :- sub(X, Y, Z).
sub(X, 0, X).

% mode: notZero[i]
notZero(s(X)).

% mode: grt[i,i]
geq(s(X), s(Y)) :- geq(X, Y).
geq(X, 0).
