%query: myis(o,i).
%
% Die natuerlichen Zahlen ...
%


myis(Z, X) :- evaluate(X, Z).
                     
evaluate(X + Y, Z) :-
        evaluate(X, X1),
        evaluate(Y, Y1),
        add(X1, Y1, Z).
evaluate(X - Y, Z) :-
        evaluate(X, X1),
        evaluate(Y, Y1),
        sub(X1, Y1, Z).
evaluate(X * Y, Z) :-
        evaluate(X, X1),
        evaluate(Y, Y1),
        mult(X1, Y1, Z).
evaluate(X, X) :- myinteger(X).

myinteger(s(X)) :- myinteger(X).
myinteger(0).

add(s(X), Y, s(Z)) :- add(X, Y, Z).
add(0, X, X).

sub(s(X), s(Y), Z) :- sub(X, Y, Z).
sub(X, 0, X).

mult(s(X), Y, R) :- mult(X, Y, Z), add(Y, Z, R).
mult(0, Y, 0).

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
