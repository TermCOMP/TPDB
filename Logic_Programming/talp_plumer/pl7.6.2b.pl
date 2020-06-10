%query: reach(i,i,i,i).

% mode: reach[i,i,i,i]
reach(X,Y,Edges,Visited) :- member([X,Y],Edges).
reach(X,Z,Edges,Visited) :- member1([X,Y],Edges),
                            member(Y,Visited),
                            reach(Y,Z,Edges,[Y|Visited]).

% mode: member[i,i]
member(H,[H|L]).
member(X,[H|L]) :- member(X,L).

% mode: member1[o,i]
member1(H,[H|L]).
member1(X,[H|L]) :- member1(X,L).
