% Author: Carsten Fuhs
% sorting by extracting the maximum of a list

%query: maxsort(i,o).

eq(t,t).
eq(f,f).

neq(t,f).
neq(f,t).

del(_,[],[]).
del(X,[Y|YS],YS) :- eq(X,Y).
del(X,[Y|YS],[Y|ZS]) :- neq(X,Y), del(X,YS,ZS).

ge(t,t).
ge(t,f).
ge(f,f).

gt(t,f).

max([],f).
max([X],X).
max([X,Y|XS],Z) :- ge(X,Y), max([X|XS],Z).
max([X,Y|XS],Z) :- gt(Y,X), max([Y|XS],Z).

maxsort([],[]).
maxsort([X|XS],[Y|YS]) :- max([X|XS],Y), del(Y,[X|XS],ZS), maxsort(ZS,YS).
