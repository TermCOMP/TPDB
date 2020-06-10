%query: mergesort(i,o).

% mode: mergesort[i,o]
mergesort([],[]).
mergesort([E],[E]).
mergesort([E,F|U],V) :- split(U,L2,L1),
                        mergesort([E|L2],X), 
                        mergesort([F|L1],Z),
                        merge(X,Z,V).

% mode: merge[i,i,o]
merge(X,[],X).
merge([],X,X).
merge([A|X],[B|Y],[A|Z]) :- le(A,B),merge(X,[B|Y],Z).
merge([A|X],[B|Y],[B|Z]) :- gt(A,B),merge([A|X],Y,Z).

% mode: split[i,o,o]
split([],[],[]).
split([E|U],[E|V],W) :- split(U,W,V).

% mode: gt[i,i]
gt(s(X), s(Y)) :- gt(X, Y).
gt(s(X), 0).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(0, s(Y)).
le(0, 0).
