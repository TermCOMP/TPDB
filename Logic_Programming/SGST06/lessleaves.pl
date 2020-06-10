%query: lessleaves(i,i).

/* from Giesl 1995 */

append(nil,Y,Y).
append(cons(U,V),Y,cons(U,Z)) :- append(V,Y,Z).
lessleaves(nil,cons(W,Z)).
lessleaves(cons(U,V),cons(W,Z)) :- append(U,V,U1), append(W,Z,W1), lessleaves(U1,W1).
