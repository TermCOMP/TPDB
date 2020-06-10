%query: perm(i,o).
perm(Xs,[X|Ys]) :- app(X1s,[X|X2s],Xs),
                   app(X1s,X2s,Zs),
                   perm(Zs,Ys).
perm([],[]).


app([X|Xs],Ys,[X|Zs]) :- app(Xs,Ys,Zs).
app([],Ys,Ys).




/*TWDESC

Permutation of a list. uses append/3.

*/

/*TWDEMO

selected_norms([listlength]).
*/
/*.

*/
