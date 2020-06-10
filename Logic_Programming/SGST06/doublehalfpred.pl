%query: f(i).

/* non-terminating example */

pred(0,0).
pred(s(0),0).
pred(s(s(X)),s(Y)) :- pred(s(X), Y).
double(0,0).
double(s(X),s(s(Y))) :- pred(s(X),Z), double(Z, Y). 
half(0,0).
half(s(s(X)),s(U)) :- pred(s(s(X)),Y), pred(Y,Z), half(Z,U).
f(s(X)) :- half(s(X),Y), double(Y,Z),  f(Z).
