%query: sublist(i,o).
sublist(X,Y) :- append(U,X,V), append(V,W,Y).

append([],Ys,Ys).
append([X|Xs],Ys,[X|Zs]) :- append(Xs,Ys,Zs).



/*TWDESC

sub list with termination problem.

*/

/*TWDEMO

selected_norms([listlength]).
*/
/*.

*/
