%query: count(i,o).

/* from Giesl, 1995 */

flatten(atom(X),[X]).
flatten(cons(atom(X),U),[X|Y]) :- flatten(U,Y).
flatten(cons(cons(U,V),W),X) :- flatten(cons(U,cons(V,W)),X).

count(atom(X),s(0)).
count(cons(atom(X),Y),s(Z)) :- count(Y,Z).
count(cons(cons(U,V),W),Z) :- flatten(cons(cons(U,V),W),X), count(X,Z).
