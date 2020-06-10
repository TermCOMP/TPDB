%query: f(i,o).

/* due to Naomi Lindenstrauss */

less(0,s(0)).
less(s(X),s(Y)) :- less(X,Y).
less(X,s(Y)) :- less(X,Y).

add(0,0,0).
add(s(X),Y,s(N)) :- add(X,Y,N).
add(X,s(Y),s(N)) :- add(X,Y,N).

f(X,N) :- less(s(s(0)),X),add(N,s(0),X).
f(X,N) :- less(X,s(s(s(0)))),add(X,s(s(0)),S),f(S,N1),f(N1,N).

