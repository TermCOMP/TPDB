%query: goal(i,o,o).

/* from Michael Leuschel's DPPD collection */

goal(A,B,C) :- s2l(A,D), applast(D,B,C).

applast(L,X,Last) :- append(L,[X],LX),last(Last,LX).

last(X,[X]).
last(X,[H|T]) :- last(X,T).

append([],L,L).
append([H|L1],L2,[H|L3]) :- append(L1,L2,L3).

s2l(s(X),[Y|Xs]):- s2l(X,Xs).
s2l(0, []).