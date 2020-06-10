%query: sum(o,o,i).

% mode: sum[o,o,i]
sum(X,s(Y),s(Z)) :- sum(X,Y,Z).
sum(X,0,X).
