%query: perm(i,o).

% mode: app1[o,o,i]
app1([X0|X],Y,[X0|Z]) :- app1(X,Y,Z).
app1([],Y,Y).

% mode: app2[i,i,o]
app2([X0|X],Y,[X0|Z]) :- app2(X,Y,Z).
app2([],Y,Y).

% mode: perm[i,o]
perm(X,[X0|Y]) :- app1(X1,[X0|X2],X),
                  app2(X1,X2,Z),
                  perm(Z,Y).
perm([],[]).
