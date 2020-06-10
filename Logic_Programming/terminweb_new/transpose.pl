%query: transpose(i,o).
%TWTYPES :- type transpose(matrix,matrix).

transpose(A,B) :-
        transpose_aux(A,[],B).

%TWTYPES :- type transpose_aux(matrix,matrix,matrix).

transpose_aux([R|Rs],_,[C|Cs]) :-
    row2col(R,[C|Cs],Cols1,[],Accm),
    transpose_aux(Rs,Accm,Cols1).
transpose_aux([], X, X).

%TWTYPES :- type row2col(row,matrix,matrix,matrix,matrix).

row2col([X|Xs],[[X|Ys]|Cols],[Ys|Cols1],A,B) :-
    row2col(Xs,Cols,Cols1,[[]|A],B).
row2col([],[],[],A,A).







/*TWDESC

Transpose a matrix

*/


/*TWTYPES

row([X|Xs]) :-
	row(Xs).
row([]).

matrix([X|Xs]) :-
	row(X),
	matrix(Xs).
matrix([]).
*/



/*TWDEMO

selected_norms([row]).
*/
/*.

msg(norms,"Now we select the norm row which counts the number of elements in the matrix. In order to continue press tha Abstract Program Button.").

msg(settings,"I set all the parameters for you, just choose checking or inference !.").

msg(check1,"I even select a query for you !.").

msg(check2,"Any thing more ?.").

msg(inference,"Well, I inferred the terminating queries,
      I think it is more than enough. ciao ciao. !.").
*/

