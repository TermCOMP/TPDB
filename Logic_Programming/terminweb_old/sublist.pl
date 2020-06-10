%query: sublist(o,i).
append([],Ys,Ys).
append([X|Xs],Ys,[X|Zs]) :- append(Xs,Ys,Zs).

sublist(X,Y) :- append(P,_,Y), append(_,X,P).


/*TWDESC

The sublist/2 relation

*/

/*TWDEMO

selected_norms([listlength]).

*/
