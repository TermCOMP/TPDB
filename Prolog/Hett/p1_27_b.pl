%Source: https://sites.google.com/site/prologsite/prolog-problems
%query:group(g,g,f).
% 1.27 (**) Group the elements of a set into disjoint subsets.

% Problem b): Generalization

% group(G,Ns,Gs) :- distribute the elements of G into the groups Gs.
%    The group sizes are given in the list Ns.

group([],[],[]).
group(G,[N1|Ns],[G1|Gs]) :- 
   selectN(N1,G,G1),
   subtract(G,G1,R),
   group(R,Ns,Gs).

selectN(0,_,[]) :- !.
selectN(N,L,[X|S]) :- N > 0, 
   el(X,L,R), 
   N1 is N-1,
   selectN(N1,R,S).

el(X,[X|L],L).
el(X,[_|L],R) :- el(X,L,R).
