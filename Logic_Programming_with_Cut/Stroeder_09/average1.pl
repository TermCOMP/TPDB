% Adapted from LP/lpexamples/average.pl
% non-terminating for average(0,s(s(s(0))),Z)

%query: average(i,i,o).
average(0,0,Z) :- !, eq(Z,0).
average(0,s(0),Z) :- !, eq(Z,0).
average(0,s(s(0)),Z) :- !, eq(Z,s(0)).
average(X,Y,Z) :- p(X,P), average(P,s(Y),Z).
average(X,Y,Z) :-
   p(Y,P1),
   p(P1,P2),
   p(P2,P3),
   average(s(X),P3,U),
   p(Z,U).

p(0,0).
p(s(X),X).

eq(X,X).
