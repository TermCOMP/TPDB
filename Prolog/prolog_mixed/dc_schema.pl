%query: dcsolve(i,o).

dcsolve(X,Y) :- base(X), conquer(X,Y).
dcsolve(X,Y) :- divide(X,X0,X1,X2),
                dcsolve(X1,Y1),
                dcsolve(X2,Y2),
                merge(X0,Y1,Y2,Y).
