%query: prime(i).

/* from Giesl, Thiemann, Schneider-Kamp, Falke, 2004 */

div(X,Y,Z) :- quot(X,Y,Y,Z).
quot(0,s(Y),s(Z),0).
quot(s(X),s(Y),Z,U) :- quot(X,Y,Z,U).
quot(X,0,s(Z),s(U)) :- quot(X,s(Z),s(Z),U).

prime(s(s(X))) :- pr(s(s(X)),s(X)).
pr(X,s(0)).
pr(X,s(s(Y))) :- not_divides(s(s(Y)),X),  pr(X,s(Y)).

not_divides(Y,X) :- div(X,Y,U), times(U,Y,Z), neq(X, Z).
neq(s(X),0).
neq(0,s(X)).
neq(s(X),s(Y)) :- neq(X,Y).

times(0,Y,0).
times(s(X),Y,Z) :- times(X,Y,U), add(U,Y,Z).

add(X,0,X).
add(0,X,X).
add(s(X),Y,s(Z)) :- add(X,Y,Z).

%generate(0,0).
%generate(X,s(Y)) :-  X >= 0, Z is X-1,  generate(Z,Y).

%primenumber(X) :- generate(X,Y), prime(Y).
