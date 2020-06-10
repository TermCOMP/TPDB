%query: som3(i,o,o).
som3([],Bs,Bs).
som3(As,[],As).
som3([A|As],[B|Bs],[A+B|Cs]) :-
 som3(As,Bs,Cs).

som4_1(As,Bs,Cs,Ds) :-
 som3(As,Bs,Es),
 som3(Es,Cs,Ds).
som4_2(As,Bs,Cs,Ds):-
 som3(Es,Cs,Ds),
 som3(As,Bs,Es).



/*TWDESC

this example was taken from the cTI benchmarks. I have no idea what it
does. I guess it is contrieved to show some analysis properties.

*/


/*TWDEMO

selected_norms([listlength]).
settings([widenk=auto]).
*/
/*.

*/
