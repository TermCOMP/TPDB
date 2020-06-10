%query: p(i,i,i,o).
/*
Chin Soon Lee, Neil D. Jones and Amir M. Ben-Amram; The Size-Change
Principle for Program Termination
*/

p(M,N,s(R),RES) :- p(M,R,N,RES).
p(M,s(N),R,RES) :- p(R,N,M,RES).
p(M,_,_,M).


/*TWDESC

Program with permutd parameters

*/


/*TWDEMO

selected_norms([termsize_nodes]).
settings([cm=poly_mc,widenk=2]).
*/
/*.

*/
