%query: gopher(i,o).

/* from Boyer, Moore, 1979 */

gopher(nil,nil).
gopher(cons(nil,Y),cons(nil,Y)).
gopher(cons(cons(U,V),W),X) :-  gopher(cons(U,cons(V,W)),X).
