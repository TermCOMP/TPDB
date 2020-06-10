%query: shanoi(i,i,i,i,o).

shanoi(s(0),A,B,C,[mv(A,C)]).
shanoi(s(s(X)),A,B,C,M) :-
	eq(N1,s(X)),
	shanoi(N1,A,C,B,M1),
	shanoi(N1,B,A,C,M2),
	append(M1,[mv(A,C)],T),
	append(T,M2,M).

append([],L,L).
append([H|L],L1,[H|R]) :-
	append(L,L1,R).

eq(X,X).
