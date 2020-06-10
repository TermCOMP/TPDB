%query: perm1(i,i).

/* example for permuting lists differently */

%perm(L,M):-length(L,N),length(M,N),
%           same_sets(L,M).

perm1(L,M) :- eq_len1(L,M),same_sets(L,M).
eq_len1([],[]).
eq_len1([_|Xs],[_|Ys]) :- eq_len1(Xs,Ys).

member(X,[X|_]).
member(X,[_|T]):-member(X,T).

same_sets([],_).
same_sets([X|Xs],L) :- member(X,L),same_sets(Xs,L).
