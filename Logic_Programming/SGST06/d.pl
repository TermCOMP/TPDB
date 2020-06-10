%query: d(i,i,o).

/* a variant of the (in)famous differentiation example */

d(X,X,1).
d(T,_,0) :- isnumber(T).
d(times(U,V),X,times(B,U)+times(A,V)) :- d(U,X,A), d(V,X,B).
d(div(U,V),X,W) :- d(times(U,power(V,p(0))),X,W).
d(power(U,V),X,times(V,times(W,power(U,p(V))))) :- isnumber(V), d(U,X,W).
isnumber(0).
isnumber(s(X)) :- isnumber(X).
isnumber(p(X)) :- isnumber(X).