%query: queens(i,o).
queens(X,Y) :-
   perm(X,Y),
   safe(Y).

perm([],[]).
perm([X|Y],[V|Res]) :-
  delete(V,[X|Y],Rest),
  perm(Rest,Res).

delete(X,[X|Y],Y).
delete(X,[F|T],[F|R]) :-
  delete(X,T,R).

safe([]).
safe([X|Y]) :-
  noattack(X,Y,1),
  safe(Y).

noattack(X,[],N).
noattack(X,[F|T],N) :-
   X =\= F,
   X =\= F + N,
   F =\= X + N,
   N1 is N + 1,
   noattack(X,T,N1).


/*TWDESC

The N-queens problem

*/

/*TWDEMO

selected_norms([listlength]).
*/
/*.

*/
