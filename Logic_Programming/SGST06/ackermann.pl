%query: ackermann(i,i,o).

/* Folklore. This example demonstrates the need for
 * combining different measures, e.g., using one loop at a time.
 */

ackermann(0,N,s(N)).
ackermann(s(M),0,Res) :-
      ackermann(M,s(0),Res).
ackermann(s(M),s(N),Res) :-
      ackermann(s(M),N,Res1),
      ackermann(M,Res1,Res).