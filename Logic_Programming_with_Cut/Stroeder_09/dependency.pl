% Adapted from LP/SGST06/ag01.pl
% terminating

%query: h(i).
h(X) :- f(X),g(X).

f(c(0,_)) :- !.
f(c(X,Y)) :- p(X,P), f(c(P,s(Y))).

g(c(_,0)) :- !.
g(c(X,Y)) :- p(Y,P), g(c(s(X),P)).

p(0,0).
p(s(X),X).
