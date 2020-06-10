%query: rev(i,o).
/*
Chin Soon Lee, Neil D. Jones and Amir M. Ben-Amram; The Size-Change
Principle for Program Termination
*/

rev(LS,RES) :- r1(LS,[],RES).
r1([],RES,RES).
r1([X|Xs],Accm,RES) :-
	r1(Xs,[X|Accm],RES).


/*TWDESC

Reverse function, with accumulating parametres

*/


/*TWDEMO

selected_norms([listlength]).
settings([cm=poly_mc,widenk=2]).
*/
/*.

*/
