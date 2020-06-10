%query: p(i).

p(0).
p(s(X)) :- geq(X,Y), p(Y).

geq(X,X).
geq(s(X),Y) :- geq(X,Y).
