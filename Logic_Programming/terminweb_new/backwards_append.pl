%query: app(i,i,o).
app([],X,X).
app([X|Xs],Ys,[X|Zs]) :-
	app(Xs,Ys,Zs).


/*TWDESC

This is the append program

*/

/*TWDEMO

selected_norms([listlength]).
*/
/*.

*/
