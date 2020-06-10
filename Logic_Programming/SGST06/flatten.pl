%query: flatten(i,o).
    
/* Folklore. */

flatten(atom(X),[X]).
flatten(cons(atom(X),U),[X|Y]) :- flatten(U,Y).
flatten(cons(cons(U,V),W),X) :- flatten(cons(U,cons(V,W)),X).
