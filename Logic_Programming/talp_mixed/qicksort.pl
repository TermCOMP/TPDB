%query: qs(i,o).

% mode: qs[i,o]
qs([X|Xs],Ys) :- part(X,Xs,Littles,Bigs),
                 qs(Littles,Ls),
                 qs(Bigs,Bs),
                 app(Ls,[X|Bs],Ys).
qs([],[]).

% mode: part[i,i,o,o]
part(X,[Y|Xs],[Y|Ls],Bs) :- gt(X,Y), part(X,Xs,Ls,Bs).
part(X,[Y|Xs],Ls,[Y|Bs]) :- le(X,Y), part(X,Xs,Ls,Bs).
part(X,[],[],[]).

% mode: app[i,i,o]
app([X|Xs],Ys,[X|Zs]) :- app(Xs,Ys,Zs).
app([],Ys,Ys).

% mode: gt[i,i]
gt(s(X), s(Y)) :- gt(X, Y).
gt(s(0), 0).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(0, s(0)).
le(0, 0).

