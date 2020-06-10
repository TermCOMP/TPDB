% Adapted from LP/SGST06/applast.pl
% terminating

%query: goal(i,o,o).
goal(A,B,C) :- s2l(A,D), applast(D,B,C).

applast(L,X,Last) :- app(L,[X],LX), last(Last,LX).

last(X,[X]) :- !.
last(X,Y) :- tail(Y,T), last(X,T).

app([],Y,Z) :- !, eq(Y,Z).
app(X,Y,[H|Z]) :- head(X,H), tail(X,T), app(T,Y,Z).

s2l(0,L) :- !, eq(L,[]).
s2l(X,[_|Xs]) :- p(X,P), s2l(P,Xs).

head([],_).
head([X|_],X).

tail([],[]).
tail([_|Xs],Xs).

p(0,0).
p(s(X),X).

eq(X,X).
