%query: s2(i,o).

% mode: s2[i,o]
s2(plus(A,plus(B,C)),D) :- s2(plus(plus(A,B),C),D).
s2(plus(A,B),C) :- s2(plus(B,A),C).
s2(plus(X,0),X).
s2(plus(X,Y),Z) :- s2(X,A), s2(Y,B), s2(plus(A,B),Z).
s2(plus(A,B),C) :- isNat(A), isNat(B), add(A,B,C).

% mode: isNat[i]
isNat(s(X)) :- isNat(X).
isNat(0).

% mode: add[i,i,o]
add(s(X), Y, s(Z)) :- add(X, Y, Z).
add(0, X, X). 

