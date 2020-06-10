%Source: https://sites.google.com/site/prologsite/prolog-problems
%query:encode_direct(g,g,f).
% 1.19 (**): Rotate a list N places to the left 

% rotate(L1,N,L2) :- the list L2 is obtained from the list L1 by 
%    rotating the elements of L1 N places to the left.
%    Examples: 
%    rotate([a,b,c,d,e,f,g,h],3,[d,e,f,g,h,a,b,c])
%    rotate([a,b,c,d,e,f,g,h],-2,[g,h,a,b,c,d,e,f])
%    (list,integer,list) (+,+,?)

rotate([],_,[]) :- !.
rotate(L1,N,L2) :-
   length(L1,NL1), N1 is N mod NL1, split(L1,N1,S1,S2), append(S2,S1,L2).

split(L,0,[],L).
split([X|Xs],N,[X|Ys],Zs) :- N > 0, N1 is N - 1, split(Xs,N1,Ys,Zs).
