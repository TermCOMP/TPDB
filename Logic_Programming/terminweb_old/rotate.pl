%query: rotate(i,o).
rotate(X,Y) :- append(A,B,X), append(B,A,Y).

append([X|Xs],Ys,[X|Zs]) :- append(Xs,Ys,Zs).
append([],Ys,Ys).



/*TWDESC

rotate a list

*/

/*TWDEMO

selected_norms([listlength]).

*/
