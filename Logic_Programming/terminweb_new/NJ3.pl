%query: ackerman(i,i,o).
/*
Chin Soon Lee, Neil D. Jones and Amir M. Ben-Amram; The Size-Change
Principle for Program Termination
*/

ackerman(0,N,s(N)).
ackerman(s(M),0,Res) :- 
      ackerman(M,s(0),Res).
ackerman(s(M),s(N),Res) :-
      ackerman(s(M),N,Res1), 
      ackerman(M,Res1,Res).




/*TWDESC

Function with lexically ordered parameters (Ackerman)

*/


/*TWDEMO

selected_norms([termsize_nodes]).
settings([cm=poly_mc,widenk=2]).
*/
/*.

*/
