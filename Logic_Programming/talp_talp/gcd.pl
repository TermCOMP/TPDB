%query: gcd(i,i,o).

% mode: gcd[i,i,o]
gcd(X,Y,D) :- le(X,Y), gcd_le(X,Y,D).
gcd(X,Y,D) :- gt(X,Y), gcd_le(Y,X,D).

% mode: gcd_le[i,i,o]
gcd_le(0,Y,Y).
gcd_le(s(X),Y,D) :- add(s(X),Z,Y), gcd(s(X),Z,D).

% mode: gt[i,i]
gt(s(X), s(Y)) :- gt(X, Y).
gt(s(X), 0).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(0, s(Y)).
le(0, 0).

% mode: add[i,o,i]
add(s(X), Y, s(Z)) :- add(X, Y, Z).
add(0, X, X). 

% toNat(0,0).
% toNat(X,s(Z)) :- X > 0, Y is X-1, toNat(Y,Z).

% toInt(0,0).
% toInt(s(X),Z) :- toInt(X,Y), Z is Y + 1.

% goal(X0, Y0, R) :- toNat(X0, X), toNat(Y0,Y), gcd(X,Y,Z), toInt(Z,R).
