%query: mergesort(i,o).
mergesort([],[]).
mergesort([X],[X]).
mergesort([X,Y|Xs],Ys) :-
	split([X,Y|Xs],X1s,X2s),
        mergesort(X1s,Y1s),
        mergesort(X2s,Y2s),
        merge(Y1s,Y2s,Ys).

split([],[],[]).
split([X|Xs],[X|Ys],Zs) :-
        split(Xs,Zs,Ys).

merge([],Xs,Xs).
merge(Xs,[],Xs).
merge([X|Xs],[Y|Ys],[X|Zs]) :-
        X=<Y,
        merge(Xs,[Y|Ys],Zs).
merge([X|Xs],[Y|Ys],[Y|Zs]) :-
        X>Y,
        merge([X|Xs],Ys,Zs).


/*TWDESC

The merge-sort algorithm

*/

/*TWDEMO

selected_norms([listlength]).
settings([cm=poly_mc,mgc=on,widenk=2,dalg=simple]).
*/
/*.

*/
