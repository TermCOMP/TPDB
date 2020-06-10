%query: pds(i,o).
%------------------------------------------------------------------------------
%	Benchmark Program - Projective Geometry
%
%	by William Older
%	Date: 
%
%	To run: pds(N,Out). or pdsbm(N).
%------------------------------------------------------------------------------

/*  
    program pds[n,_list] attempts to construct a perfect difference
    set  ( in increasing order, starting at 0) of order n.  Such a set
    determines a finite cyclic projective geometry with n(n+1)+1 points.
    There are answers known for n=2,3,4,5, and 7. (not sure about 8,9)
    The case n=10 is an open question.

    This is version 2 with an optimized version of the check routines.

    The exported predicate is pds/2, with mode [++, nv].

*/


%:- entry(pds(g,f)).

member( X, [X|Xs]).
member( X, [_|Xs]):- member(X,Xs).

iota(N,List):-iota1(0,N,List).   %origin 0
iota1(K,K,[]):-!.
iota1(K,N,[K|List]):- K1 is K+1, iota1(K1,N,List).

dif( [],_,_,[],[]).
dif( [S|Ss],Val,Mod,[D|Ds],[D2|D2s]):-
     D is Val - S, D2 is Mod - D,
     dif( Ss,Val,Mod,Ds,D2s).
    
rev( [],L,L).
rev( [X|Xs], Y,L):-rev( Xs,[X|Y],L).

mergedelete([],L,L).
mergedelete([D|Ds], [D|R], L2):-
        mergedelete( Ds, R, L2).
mergedelete( [D|Ds], [X|R], [X|L2]):-
        D > X,
        mergedelete( [D|Ds],R,L2).
       
check( [],_,L,L,_):-!.
check( S, Choice, Old, L3,Modulus):-
      dif( S, Choice,Modulus, Ds,Dds),
      mergedelete( Ds, Old,L2),
      rev( Dds,[],Rds),
      mergedelete(Rds, L2,L3),
      !.

pds1( [],_,[],_):-!.
pds1( Unused, List, [Choice|Rest],Mod):-
     member(Choice,Unused),
     check( List, Choice, Unused,U3,Mod),
     pds1( U3, [Choice| List], Rest, Mod).
    
pds( Order, [0|Ans]):-
    N is Order * (Order + 1) + 1,
    iota( N, [0|List]),
    pds1( List, [0], Ans, N).
   
pdsbm(N):- pds(N, [0,1|X]).

/*
:- noparallelize.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %
%

no_trace_main:- 
	time(_),
        pds(5,[0,1|X]),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write(X), nl.

trace_main(Eventfile):-
	start_event_trace, 
        pds(5,[0,1|X]),
	stop_event_trace,
	save_trace(Eventfile),
	write('Result '), write(X),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/

