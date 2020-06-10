%query: rev(i,o).

/* from Huet, Hullot, 1982 */

rev([],[]).
rev([X|XS],[Y|YS]) :- rev1(X,XS,Y), rev2(X,XS,YS).
rev1(X,[],X).
rev1(X,[Y|YS],Z) :- rev1(Y,YS,Z).
rev2(X,[],[]).
rev2(X,[Y|YS],ZS) :- rev2(Y,YS,US), rev(US,VS), rev([X|VS], ZS).
