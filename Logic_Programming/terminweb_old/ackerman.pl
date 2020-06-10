%query: ackermann(i,i,o).

ackermann(0,N,s(N)).
ackermann(s(M),0,Res) :- 
      ackermann(M,s(0),Res).
ackermann(s(M),s(N),Res) :-
      ackermann(s(M),N,Res1), 
      ackermann(M,Res1,Res).



/*TWDESC

The ackerman function

*/
