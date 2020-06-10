%query: f(i,i,o).
/*
Chin Soon Lee, Neil D. Jones and Amir M. Ben-Amram; The Size-Change
Principle for Program Termination
*/


f([],RES,RES).
f([Head|Tail],X,RES) :- g(Tail,X,[Head|Tail],RES).

g(A,B,C,RES) :- 
	f(A,[B|C],RES).

/*TWDESC

Program with indirect recursion

*/


/*TWDEMO

selected_norms([listlength]).
settings([cm=poly_mc,widenk=2]).
*/
/*.

*/
