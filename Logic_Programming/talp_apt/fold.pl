%query: fold(i,i,o).

% mode: fold[i,i,o]
fold(X,[Y|Ys],Z) :- myop(X,Y,V), fold(V,Ys,Z).
fold(X,[],X).

% mode: myop[i,i,o]
myop(a,b,c).
