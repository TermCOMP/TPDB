%query: fib(i,o).

add(0,0,0).
add(s(X),Y,s(N)) :- add(X,Y,N).
add(X,s(Y),s(N)) :- add(X,Y,N).

fib(0,0).
fib(s(0),s(0)).
fib(s(s(X)),N) :- fib(s(X),N1),fib(X,N2),add(N1,N2,N).
