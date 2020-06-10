%query: conf(i).

/* variant of example from
 * Stefaan Decorte, Danny De Schreye, Henk Vandecasteele, 1997
 * using cons and nil instead of [_|_] and []
 */

conf(X) :- del2(X,Z), del(U,Y,Z), conf(Y).
del2(X,Y) :- del(U,X,Z), del(V,Z,Y).
del(X,cons(X,T),T).
del(X,cons(H,T),cons(H,T1)) :- del(X,T,T1).
    
s2l(s(X),cons(Y,Xs)):- s2l(X,Xs).
s2l(0, nil).

goal(X) :- s2l(X,XS), conf(XS).
