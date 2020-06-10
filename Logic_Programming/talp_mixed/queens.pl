%query: queens(o).

% mode: queens[o]
queens(Y) :-
   perm([s(0), s(s(0)), s(s(s(0))), s(s(s(s(0)))), s(s(s(s(s(0))))),
         s(s(s(s(s(s(0)))))), s(s(s(s(s(s(s(0))))))),
         s(s(s(s(s(s(s(s(0))))))))],Y),
   safe(Y).

% mode: perm[i,o]
perm([],[]).
perm([X|Y],[V|Res]) :-
  delete(V,[X|Y],Rest),
  perm(Rest,Res).

% mode: delete[o,i,o]
delete(X,[X|Y],Y).
delete(X,[F|T],[F|R]) :-
  delete(X,T,R).

% mode: safe[i]
safe([]).
safe([X|Y]) :-
  noattack(X,Y,s(0)),
  safe(Y).

% mode: noattack[i,i,i]
noattack(X,[],N).
noattack(X,[F|T],N) :-
   notEq(X, F),
   add(F,N,FplusN),
   notEq(X,FplusN),
   add(X,N,XplusN),
   notEq(F,XplusN),
   noattack(X,T,s(N)).

% mode: add[i,i,o]
add(0, X, X).
add(s(X), Y, s(Z)) :- add(X, Y, Z).

% mode: notEq[i,i]
notEq(0, s(X)).
notEq(s(X), 0).
notEq(s(X), s(Y)) :- notEq(X, Y).

