%query: reach(i,i,i).

% mode: reach[i,i,i]
reach(X,Y,Edges) :- member([X,Y],Edges).
reach(X,Z,Edges) :- member1([X,Y],Edges),reach(Y,Z,Edges).

% mode: member[i,i]
member(H,[H|L]).
member(X,[H|L]) :- member(X,L).

% mode: member1[o,i]
member1(H,[H|L]).
member1(X,[H|L]) :- member1(X,L).
