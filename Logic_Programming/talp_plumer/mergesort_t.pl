%query: mergesort(i,o).

% mode: mergesort[i,o]
mergesort([],[]).
mergesort([X],[X]).
mergesort([X,Y|L1],L2) :- split2([X,Y|L1],L3,L4),
                          mergesort(L3,L5),
                          mergesort(L4,L6),
                          merge(L5,L6,L2).

% mode: split[i,o,o]
split(L1,L2,L3) :- split0(L1,L2,L3).
split(L1,L2,L3) :- split1(L1,L2,L3).
split(L1,L2,L3) :- split2(L1,L2,L3).

% mode: split0[i,o,o]
split0([],[],[]).

% mode: split1[i,o,o]
split1([X],[X],[]).

% mode: split2[i,o,o]
split2([X,Y|L1],[X|L2],[Y|L3]) :- split(L1,L2,L3).

% mode: merge[i,i,o]
merge([],L1,L1).
merge(L1,[],L1).
merge([X|L1],[Y|L2],[X|L3]) :- le(X,Y), merge(L1,[Y|L2],L3).
merge([X|L1],[Y|L2],[Y|L3]) :- gt(X,Y), merge([X|L1],L2,L3).

% mode: gt[i,i]
gt(s(X), s(Y)) :- gt(X, Y).
gt(s(X), 0).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(0, s(Y)).
le(0, 0).
