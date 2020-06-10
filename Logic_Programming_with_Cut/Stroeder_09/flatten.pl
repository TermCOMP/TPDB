% Author: Thomas Stroeder
% non-terminating

%query: flatten(i,o).
flatten(atom(X),Y) :- !, eq(Y,[X]).
flatten(L,Y) :- head(L,atom(H)), !, eq(Y,[H|Z]), tail(L,T), flatten(T,Z).
flatten(L,X) :- head(L,cons(U,V)), tail(L,W), flatten(cons(U,cons(V,W)),X).

head(nil,_).
head(cons(H,_),H).

tail(nil,nil).
tail(cons(_,T),T).

eq(X,X).
