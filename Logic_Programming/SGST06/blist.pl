%query: goal(i).

/* list check for lists of bounded length */

list([]).
list([X|XS]) :- list(XS).

s2l(s(X),[Y|Xs]):- s2l(X,Xs).
s2l(0, []).

goal(X) :- s2l(X,XS), list(XS).
