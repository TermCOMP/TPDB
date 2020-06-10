%query: f(i,i,o).
/*
Chin Soon Lee, Neil D. Jones and Amir M. Ben-Amram; The Size-Change
Principle for Program Termination
*/

f(A,[],RES) :- g(A,[],RES).
f([A|As],[B|Bs],RES) :- f([B|[A|As]],Bs,RES).

g([],RES,RES).
g([C|Cs],D,RES) :- g(Cs,[C|D],RES).


/*TWDESC

Parameters with late starting sequence of descending parameter values.

*/


/*TWDEMO

selected_norms([listlength]).
settings([cm=poly_mc,widenk=2]).
*/
/*.

*/
