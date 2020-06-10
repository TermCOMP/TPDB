%query: merge(i,i,o).

% mode: merge[i,i,o]
merge([],X,X).
merge(X,[],X).
merge([X|Xs],[Y|Ys],[X|Zs]) :- leq(X,Y),merge(Xs,[Y|Ys],Zs).
merge([X|Xs],[Y|Ys],[Y|Zs]) :- less(Y,X),merge([X|Xs],Ys,Zs).

% mode: less[i,i]
less(0, s(0)).
less(s(X), s(Y)) :- less(X, Y).

% mode: leq[i,i]
leq(0, 0).
leq(0, s(0)).
leq(s(X), s(Y)) :- leq(X, Y).

