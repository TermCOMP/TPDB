%query: gtsolve(i,o).

gtsolve(X,Y) :- generate(X,Y), test(Y).
