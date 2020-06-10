%Source: https://sites.google.com/site/prologsite/prolog-problems
%query:split(g,g,f,f).
% 1.17 (*): Split a list into two parts

% split(L,N,L1,L2) :- the list L1 contains the first N elements
%    of the list L, the list L2 contains the remaining elements.
%    (list,integer,list,list) (?,+,?,?)

split(L,0,[],L).
split([X|Xs],N,[X|Ys],Zs) :- N > 0, N1 is N - 1, split(Xs,N1,Ys,Zs).

