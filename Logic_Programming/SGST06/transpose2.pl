%query: transpose_aux(o,i,o).

/* Folklore. */

transpose_aux([R|Rs],_,[C|Cs]) :-
    row2col(R,[C|Cs],Cols1,[],Accm).


row2col([X|Xs],[[X|Ys]|Cols],[Ys|Cols1],A,B) :-
    row2col(Xs,Cols,Cols1,[[]|A],B).
