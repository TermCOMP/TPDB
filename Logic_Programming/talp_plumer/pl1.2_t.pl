%query: perm(i,o).

% mode: append2[o,i]
append2(parts([],Y),is(sum(Y))).
append2(parts([H|X],Y),is(sum([H|Z]))) :- append2(parts(X,Y),is(sum(Z))).

% mode: append1[i,o]
append1(parts([],Y),is(sum(Y))).
append1(parts([H|X],Y),is(sum([H|Z]))) :- append1(parts(X,Y),is(sum(Z))).

% mode: perm[i,o]
perm([],[]).
perm(L,[H|T]) :- append2(parts(V,[H|U]),is(sum(L))),
                 append1(parts(V,U),is(sum(W))),
                 perm(W,T).
