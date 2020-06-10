%query: f(i,i,o).
/*
Chin Soon Lee, Neil D. Jones and Amir M. Ben-Amram; The Size-Change
Principle for Program Termination
*/

f(RES,[],RES).
f([],[Head|Tail],RES) :- f([Head|Tail],Tail,RES).
f([Head|Tail],Y,RES) :- f(Y,Tail,RES).


/*TWDESC

Program with permutd parameters and possibly discarded parameters

*/


/*TWDEMO

selected_norms([listlength]).
settings([cm=poly_mc,widenk=2]).
*/
/*.

*/
