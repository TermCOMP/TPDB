%query: mult(i,i,o).

% mode: mult[i,i,o]
mult(0,Y,0).
mult(s(X),Y,Z) :- mult(X,Y,Z1), add(Z1,Y,Z).

% mode: add[i,i,o]
add(0,Y,Y).
add(s(X),Y,s(Z)) :- add(X,Y,Z).
