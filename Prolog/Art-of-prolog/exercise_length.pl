%Source: http://colin.barker.pagesperso-orange.fr/sands.htm
%query:length(g,f).
/* length(Xs,L) is true if L is the length of the list Xs.                 */
length(Xs,L):-length(Xs,0,L).

length([],L,L).
length([X|Xs],L0,L):-L1 is L0+1, length(Xs,L1,L).
