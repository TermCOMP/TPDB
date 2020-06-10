%query: transpose(o,i).

/* variant of example from toplas collection
 * using cons and nil instead of [_|_] and []
 */

%TWTYPES :- type transpose(matrix,matrix).

transpose(A,B) :-
        transpose_aux(A,nil,B).

%TWTYPES :- type transpose_aux(matrix,matrix,matrix).

transpose_aux(cons(R,Rs),_,cons(C,Cs)) :-
    row2col(R,cons(C,Cs),Cols1,Accm),
    transpose_aux(Rs,Accm,Cols1).
transpose_aux(nil, X, X).

%TWTYPES :- type row2col(row,matrix,matrix,matrix).

row2col(cons(X,Xs),cons(cons(X,Ys),Cols),cons(Ys,Cols1),cons(nil,As)) :-
    row2col(Xs,Cols,Cols1,As).
row2col(nil,nil,nil,nil).







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

