%query: minsort(i,o).

% mode: minsort[i,o]
minsort([],[]).
minsort(L,[X|L1]) :- min1(X,L), remove(X,L,L2), minsort(L2,L1).

% mode: min1[o,i]
min1(M,[X|L]) :- min2(X,M,L).

% mode: min2[i,o,i]
min2(X,X,[]).
min2(X,A,[M|L]) :- min(X,M,B),min2(B,A,L).

% mode: min[i,i,o]
min(X,Y,X) :- le(X,Y).
min(X,Y,Y) :- gt(X,Y).

% mode: remove[i,i,o]
%remove(N,[],[]).   (this case cannot occur in our program)
remove(N,[N|L],L).
remove(N,[M|L],[M|L1]) :- notEq(N,M),remove(N,L,L1).

% mode: gt[i,i]
gt(s(X), s(Y)) :- gt(X, Y).
gt(s(X), 0).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(0, s(Y)).
le(0, 0).

% mode: notEq[i,i]
notEq(s(X), s(Y)) :- notEq(X, Y).
notEq(s(X), 0).
notEq(0, s(X)).


