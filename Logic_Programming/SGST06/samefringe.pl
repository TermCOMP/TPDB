%query: samefringe(i,i).

/* from Boyer, Moore, 1979. inspired by algorithm from McCarthy */

gopher(nil,nil).
gopher(cons(nil,Y),cons(nil,Y)).
gopher(cons(cons(U,V),W),X) :-  gopher(cons(U,cons(V,W)),X).

samefringe(nil,nil).
samefringe(cons(U,V),cons(X,Y)) :- gopher(cons(U,V),cons(U1,V1)), gopher(cons(X,Y),cons(X1,Y1)),
                                   samefringe(V1,Y1).
