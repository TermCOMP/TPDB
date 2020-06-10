%query: div(i,i,o).

/*
div(0, s(Y), 0).
div(s(X), s(Y), 0) :- lss(X, Y).
div(s(X), s(Y), s(Z)) :-
    sub(X, Y, R),
    div(R, s(Y), Z).
*/
div(X, s(Y), Z) :- div_s(X,Y,Z).

div_s(0, Y, 0).
div_s(s(X), Y, 0) :- lss(X, Y).
div_s(s(X), Y, s(Z)) :-
    sub(X, Y, R),
    div_s(R, Y, Z).

lss(s(X), s(Y)) :- lss(X, Y).
lss(0, s(Y)).

sub(s(X), s(Y), Z) :- sub(X, Y, Z).
sub(X, 0, X).
