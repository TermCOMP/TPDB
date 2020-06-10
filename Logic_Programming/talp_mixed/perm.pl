%query: perm(i,o).

% mode: append[i,i,o]
append(nil, XS, XS).
append(cons(X, XS1), XS2, cons(X, YS)) :- append(XS1, XS2, YS).

% mode: split[i,o,o]
split(XS, nil, XS).
split(cons(X, XS), cons(X, YS1), YS2) :- split(XS, YS1, YS2).

% mode: perm[i,o]
perm(nil, nil).
perm(XS, cons(Y, YS)) :- split(XS, YS1, cons(Y, YS2)),
                         append(YS1, YS2, ZS),
                         perm(ZS, YS).

        
