%query: shapes(i,o).
/*

Taken from the 

       4th Annual Prolog programming contest 
              9 July 1997, Leuven 


You get an NxM (N and M differ from 0) matrix filled with the colours
black and white. The blacks are background; a connected component of
whites form a shape. You are to determine the number of shapes in the
matrix. Two white entries of the matrix belong to the same shape if
there is a path from one to the other over whites; a path consist of
successive points with coordinates (i,j) and (k,l) such that |i-k| =<
1 and |j-l| =< 1.

The matrix is given as a list of lists which contains elements equal
to black or white - this should be obvious from the examples - as the
first argument of the predicate shapes/2 that you have to write. The
second argument should be unified with the number of shapes in the
first argument. Here are some example calls:


?- shapes([[black,white,black], 
          [white,black,black], 
          [white,black,white]],N). 

N = 2 


?- shapes([[white,white,white], 
           [white,black,black], 
           [white,black,black], 
           [white,black,black]],N). 


N = 1 

A hint: you need no arithmetic at all :-) 

----------------------------------------------------

The solution given below assumes the matrix is at least 2x2.

This solution uses the Prolog builtin numbervars/3 which might
be a problem for some termination analyzers. One could either
provide code for this predicate (there is a challange of this
in numbervars.pl); or inform the analyzer that numbervars as
a builtin always terminates

*/



shapes(Matrix,N) :- 
        varmat(Matrix,MatrixWithVars),
        unif_matrx(MatrixWithVars).
%        numbervars(MatrixWithVars,0,N).

varmat([],[]).
varmat([L|Ls], [VL|VLs]) :-
        varmat(L,VL),
        varmat(Ls,VLs).
varmat([black|Xs],[black|VXs]) :-
        varmat(Xs,VXs).
varmat([white|Xs],[w(_)|VXs]) :-
        varmat(Xs,VXs).

unif_matrx([ L1, L2 | Ls]) :-
        unif_lines(L1,L2),
        unif_matrx([L2|Ls]).
unif_matrx([_]).

unif_lines( [W,X|L1s],
            [Y,Z|L2s]) :-
        unif_pairs([W,X, Y,Z,  W,Y,  X,Z, W,Z, X,Y]),
        unif_lines([X|L1s],
                   [Z|L2s]).
unif_lines( [_],[_] ).


unif_pairs([]).
unif_pairs([A,B| Pairs] ) :-
        unif(A,B),
        unif_pairs(Pairs).

unif(w(A),w(A)).
unif(black,black).
unif(black,w(_)).
unif(w(_),black).

