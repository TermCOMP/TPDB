%query: type(i,i,o).

type(E,var(X),T) :- in(E,X,T).
type(E,apply(M,N),T) :- type(E,M,arrow(S,T)),type(E,N,S).
type(E,lambda(X,M),arrow(S,T)) :- type([(X,S)|E],M,T).

in([(X,T)|E],X,T).
in([(Y,T)|E],X,T) :- X\==Y, in(E,X,T).
