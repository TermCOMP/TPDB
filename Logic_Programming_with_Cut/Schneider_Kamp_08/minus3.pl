%query: q(i,i).
q(X,Y) :- m(X,Y,Z).
m(X,0,X).
m(0,Y,0) :- !.
m(X,Y,Z) :- p(X,A),p(Y,B),m(A,B,Z).
p(0,0).
p(s(X),X).
