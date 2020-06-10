%query: mergesort(i,o).

% mode: mergesort[i,o]
mergesort([],[]).
mergesort([X],[X]).
mergesort([X,Y|Xs],Ys) :- split([X,Y|Xs],X1s,X2s),
                          mergesort(X1s,Y1s),
                          mergesort(X2s,Y2s),
                          merge(Y1s,Y2s,Ys).

% mode: split[i,o,o]
split([],[],[]).
split([X|Xs],[X|Ys],Zs) :- split(Xs,Zs,Ys).

% mode: merge[i,i,o]
merge([],Xs,Xs).
merge(Xs,[],Xs).
merge([X|Xs],[Y|Ys],[X|Zs]) :- le(X,Y), merge(Xs,[Y|Ys],Zs).
merge([X|Xs],[Y|Ys],[Y|Zs]) :- gt(X,Y), merge([X|Xs],Ys,Zs).

% mode: gt[i,i]
gt(s(X), s(Y)) :- gt(X, Y).
gt(s(X), 0).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(0, s(Y)).
le(0, 0).

