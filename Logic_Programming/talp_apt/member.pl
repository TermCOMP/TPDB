%query: member(o,i).

% mode: member[o,i]
member(X,[Y|Xs]) :- member(X,Xs).
member(X,[X|Xs]).
