%query: conf(i).

/* from Stefaan Decorte, Danny De Schreye, Henk Vandecasteele, 1997 */

conf(X) :- del2(X,Z), del(U,Y,Z), conf(Y).
del2(X,Y) :- del(U,X,Z), del(V,Z,Y).
del(X,[X|T],T).
del(X,[H|T],[H|T1]) :- del(X,T,T1).
    
s2l(s(X),[Y|Xs]):- s2l(X,Xs).
s2l(0, []).

goal(X) :- s2l(X,XS), conf(XS).
