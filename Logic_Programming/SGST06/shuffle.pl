%query: query(i).

/* from Walther, 1994 */

append(nil,XS,XS).
append(cons(X,XS),YS,cons(X,ZS)) :- append(XS,YS,ZS).
reverse(nil,nil).
reverse(cons(X,nil),cons(X,nil)).
reverse(cons(X,XS),YS) :- reverse(XS,ZS), append(ZS,cons(X,nil),YS).

shuffle(nil,nil).
shuffle(cons(X,XS),cons(X,YS)) :- reverse(XS,ZS), shuffle(ZS,YS).

query(XS) :- shuffle(cons(X,XS),YS).
