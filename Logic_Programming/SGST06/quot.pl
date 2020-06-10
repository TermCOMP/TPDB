%query: div(i,i,o).

/* dvision example inspired by term rewriting */

div(X,Y,Z) :- quot(X,Y,Y,Z).
quot(0,s(Y),s(Z),0).
quot(s(X),s(Y),Z,U) :- quot(X,Y,Z,U).
quot(X,0,s(Z),s(U)) :- quot(X,s(Z),s(Z),U).
