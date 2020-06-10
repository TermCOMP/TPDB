%query: countstack(i,o).

/* from Gries, 1981 */

countstack(empty,0).
countstack(push(nil,T),X) :- countstack(T,X).
countstack(push(cons(U,V),T),s(X)) :- countstack(push(U,push(V,T)),X).
