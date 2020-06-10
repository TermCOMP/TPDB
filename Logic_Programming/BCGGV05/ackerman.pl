%query: ackermann(i,i,o).
%% ackerman(A,B,C) :- C=ack(A,B)
%%


%TWTYPES     :- type ackermann(nat,nat,nat).

ackermann(0,N,s(N)).
ackermann(s(M),0,Res) :- 
      ackermann(M,s(0),Res).
ackermann(s(M),s(N),Res) :-
      ackermann(s(M),N,Res1), 
      ackermann(M,Res1,Res).




/*TWDESC

ackerman(A,B,C) :- C=ack(A,B)

*/


/*TWTYPES

nat(0).
nat(s(X)) :- nat(X).

*/


/*TWDEMO

selected_norms([nat]).
query(ackermann(b,b,f)).

*/

