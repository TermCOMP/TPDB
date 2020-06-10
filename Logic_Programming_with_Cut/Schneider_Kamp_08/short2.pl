%query: p(o,o,o).

p(X,X,1) :- !.
p(X,Y,Z) :- Z=1,Y=X,p(X,Y,Z).
=(X,X).