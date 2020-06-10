%query: reach(i,i,i,i).

% mode: reach[i,i,i,i]
reach(X,Y,E,L) :- member([X,Y],E).
reach(X,Z,E,L) :- member1([X,Y],E),
                  member(Y,L),
                  delete(Y,L,V1),
                  reach(Y,Z,E,V1).

% mode: member[i,i]
member(H,[H|L]).
member(X,[H|L]) :- member(X,L).

% mode: member1[o,i]
member1(H,[H|L]).
member1(X,[H|L]) :- member1(X,L).

% mode: delete[i,i,o]
delete(X,[X|Y],Y).
delete(X,[H|T1],[H|T2]) :- delete(X,T1,T2).
