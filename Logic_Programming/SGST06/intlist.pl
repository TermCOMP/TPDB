%query: int(i,i,o).

/* from Steinbach, 1995 */

intlist([],[]).
intlist([X|XS],[s(X)|YS]) :- intlist(XS,YS).
int(0,0,[0]).
int(0,s(Y),[0|XS]) :- int(s(0),s(Y),XS).
int(s(X),0,[]).
int(s(X),s(Y),XS) :- int(X,Y,ZS), intlist(ZS,XS).
