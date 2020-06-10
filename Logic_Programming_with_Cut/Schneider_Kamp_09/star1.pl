% Author: Peter Schneider-Kamp
% terminating

%query: star(i,i).
star(U,[]) :- !.
star([],W) :- !, W = [].
star(U,W) :- app(U,V,W), star(U,V).
app([],L,L).
app([X|L],M,[X|N]) :- app(L,M,N).

=(X,X).
