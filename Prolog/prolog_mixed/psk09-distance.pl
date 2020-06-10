% The First 10 Prolog programming Contests

%query: distance(i,i,i,i,o).
distance(_,_,1,J,D) :- !, D is J - 1 + 1.
distance(_,M,I,M,D) :- !, D is M + I - 2 + 1.
distance(N,M,N,J,D) :- !, D is N + 2*M - J - 2 + 1.
distance(N,M,I,1,D) :- !, D is 2*N + 2*M - I - 3 + 1.
distance(N,M,I,J,D) :-
   N1 is N - 2,
   M1 is M - 2,
   I1 is I - 1,
   J1 is J - 1,
   distance(N1,M1,I1,J1,D1),
   D is 2*N + 2*M + D1 - 4.
