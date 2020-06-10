%query: weight(i,o).

/* from Arts, Giesl, 1998 */

sum([s(N)|XS], [M|YS], ZS) :- sum([N|XS], [s(M)|YS], ZS).
sum([0|XS], YS, ZS) :- sum(XS,YS,ZS).
sum([],YS,YS).
weight([N,M|XS],X) :- sum([N,M|XS], [0|XS], YS), weight(YS, X).
weight([X],X).
