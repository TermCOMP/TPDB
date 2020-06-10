%query: merge(i,i,o).

% mode: merge[i,i,o]
merge(X,[],X).
merge([],X,X).
merge([A|X],[B|Y],[A|Z]) :- le(A,B), merge(X,[B|Y],Z).
merge([A|X],[B|Y],[B|Z]) :- gt(A,B), merge([A|X],Y,Z).

% mode: gt[i,i]
gt(s(X), s(Y)) :- gt(X, Y).
gt(s(X), zero).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(zero, s(Y)).
le(zero, zero).
