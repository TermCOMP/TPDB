%query: convert(i,i,o).

/* from Giesl, 1995 */

convert([],B,0).
convert([0|XS],B,X) :- convert(XS,B,Y), times(Y,B,X).
convert([s(Y)|XS],B,s(X)) :- convert([Y|XS],B,X).

plus(0,Y,Y).
plus(s(X),Y,s(Z)) :- plus(X,Y,Z).
times(0,Y,0).
times(s(X),Y,Z) :- times(X,Y,U), plus(Y,U,Z).
