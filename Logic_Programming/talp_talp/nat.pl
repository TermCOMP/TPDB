%query: factorial(i,o).
%
% Die natuerlichen Zahlen ...
%


% mode: isNat[i]
isNat(s(X)) :- isNat(X).
isNat(0).

% mode: notEq[i,i]
notEq(s(X), s(Y)) :- notEq(X, Y).
notEq(s(X), 0).
notEq(0, s(X)).

% mode: lt[i,i]
lt(s(X), s(Y)) :- lt(X, Y).
lt(0, s(Y)).

% mode: gt[i,i]
gt(s(X), s(Y)) :- gt(X, Y).
gt(s(X), 0).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(0, s(Y)).
le(0, 0).

% mode: even[i]
even(s(X)) :- odd(X).
even(0).

% mode: odd[i]
odd(s(X)) :- even(X).
odd(s(0)).

% mode: add[i,i,o]
add(s(X), Y, s(Z)) :- add(X, Y, Z).
add(0, X, X). 

% mode: mult[i,i,o]
mult(s(X), Y, R) :- mult(X, Y, Z), add(Y, Z, R).
mult(0, Y, 0).

% mode: factorial[i,o]
factorial(s(X), R) :- factorial(X, Y), mult(s(X), Y, R).
factorial(0, s(0)).
