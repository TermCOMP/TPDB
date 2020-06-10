%query: qsort(i,o).

% mode: qsort[i,o]
qsort([],[]).
qsort([H|L],S) :- split(L,H,A,B), qsort(A,A1),qsort(B,B1),append(A1,[H|B1],S).

% mode: split[i,i,o,o]
split([],Y,[],[]).
split([X|Xs],Y,[X|Ls],Bs) :- le(X,Y), split(Xs,Y,Ls,Bs).
split([X|Xs],Y,Ls,[X|Bs]) :- gt(X,Y), split(Xs,Y,Ls,Bs).

% mode: append[i,i,o]
append([],L,L).
append([H|L1],L2,[H|L3]) :- append(L1,L2,L3).

% mode: gt[i,i]
gt(s(X), s(Y)) :- gt(X, Y).
gt(s(X), 0).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(0, s(Y)).
le(0, 0).
