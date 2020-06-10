%query: transpose(i,i).
%TWTYPES :- type transpose(matrix,matrix).

transpose(A,B) :-
        transpose_aux(A,[],B).

%TWTYPES :- type transpose_aux(matrix,matrix,matrix).

transpose_aux([R|Rs],_,[C|Cs]) :-
    row2col(R,[C|Cs],Cols1,Accm),
    transpose_aux(Rs,Accm,Cols1).
transpose_aux([], X, X).

%TWTYPES :- type row2col(row,matrix,matrix,matrix).

row2col([X|Xs],[[X|Ys]|Cols],[Ys|Cols1],[[]|As]) :-
    row2col(Xs,Cols,Cols1,As).
row2col([],[],[],[]).







/*TWDESC

Transpose a matrix

*/


/*TWTYPES

row([X|Xs]) :-
    poly(X),
	row(Xs).
row([]).

poly(dummy).

matrix([X|Xs]) :-
	row(X),
	matrix(Xs).
matrix([]).
*/



/*TWDEMO

selected_norms([row,matrix,poly]).

query(transpose(b,b,f,f,f,f)).
query(transpose(b,f,b,f,f,f)).
query(transpose(b,f,f,b,f,f)).
query(transpose(b,f,f,f,b,f)).
query(transpose(b,f,f,f,f,b)).
query(transpose(f,b,f,f,f,f)).
query(transpose(f,f,b,f,f,f)).
query(transpose(f,f,f,f,b,f)).
query(transpose(f,f,f,f,f,b)).
query(transpose_aux(b,b,f,f,f,f,f,f,f)).
query(transpose_aux(b,f,b,f,f,f,f,f,f)).
query(transpose_aux(b,f,f,f,f,f,b,f,f)).
query(transpose_aux(b,f,f,f,f,f,f,b,f)).
query(transpose_aux(b,f,f,f,f,f,f,f,b)).
query(transpose_aux(f,b,f,f,f,f,f,f,f)).
query(transpose_aux(f,f,b,f,f,f,f,f,f)).
query(transpose_aux(f,f,f,f,f,f,f,b,f)).
query(transpose_aux(f,f,f,f,f,f,f,f,b)).
query(row2col(f,b,f,f,f,f,f,f,f,f,f,f)).
query(row2col(f,f,b,f,f,f,f,f,f,f,f,f)).
query(row2col(f,f,f,b,f,f,f,f,f,f,f,f)).
query(row2col(f,f,f,f,b,f,f,f,f,f,f,f)).
query(row2col(f,f,f,f,f,b,f,f,f,f,f,f)).
query(row2col(f,f,f,f,f,f,b,f,f,f,f,f)).
query(row2col(f,f,f,f,f,f,f,f,b,f,f,f)).
query(row2col(f,f,f,f,f,f,f,f,f,b,f,f)).
query(row2col(f,f,f,f,f,f,f,f,f,f,f,b)).

*/

