% Variable list construction and destruction
% Adapted from LP/BCGGV05/t.pl
% terminating

%query: vlcnd(i).
vlcnd(N) :- vl(N,Xs), select(_,Xs,Ys), vl(M,Ys), vlcnd(M).
vlcnd(0).

vl(0,L) :- !, eq(L,[]).
vl(N,[_|Xs]) :- p(N,P), vl(P,Xs).

select(X,[Y|Xs],[Y|Ys]) :- select(X,Xs,Ys).
select(X,[X|Xs],Xs).

p(0,0).
p(s(X),X).

eq(X,X).
