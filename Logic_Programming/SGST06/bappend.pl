%query: goal(i).

/* append on lists of bounded length */

append([],XS,XS).
append([X|XS],YS,[X|ZS]) :- append(XS,YS,ZS).

s2l(s(X),[Y|Xs]):- s2l(X,Xs).
s2l(0, []).

goal(X) :- s2l(X,XS), append(XS,YS,ZS).