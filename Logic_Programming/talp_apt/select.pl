%query:  select(o,i,o).

% mode: select[o,i,o]
select(X,[X|Xs],Xs).
select(X,[Y|Xs],[Y|Zs]) :- select(X,Xs,Zs).




