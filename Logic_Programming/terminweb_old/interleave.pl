%query: interleave(i,i,o).
interleave([],Xs,Xs).
interleave([X|Xs],Ys,[X|Zs]) :-
	interleave(Ys,Xs,Zs).


/*TWDESC

interleave/3 relation which generate the interleave list of two lists

*/

/*TWDEMO

selected_norms([listlength]).
*/
/*.

*/
