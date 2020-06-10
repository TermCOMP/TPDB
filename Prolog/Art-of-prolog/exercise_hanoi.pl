%Source: http://colin.barker.pagesperso-orange.fr/sands.htm
%query:hanoi(g,g,g,g,f,f).
/* hanoi(N,A,B,C,Moves,[]) is true if Moves is the sequence of moves       */
/*   required to move N discs from peg A to peg B using peg C as an        */
/*   intermediary according to the rules of the Tower of Hanoi puzzle.     */
hanoi(1,A,B,C,[to(A,B)|Zs],Zs).
hanoi(N,A,B,C,Xs,Zs):-
  N>1, N1 is N - 1,
  hanoi(N1,A,C,B,Xs,[to(A,B)|Ys]),
  hanoi(N1,C,B,A,Ys,Zs).
