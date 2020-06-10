%query: mergesort(i,o,o).
% this is a variant of a version of mergesort that appears in
% K. A. Apt and D. Pedreschi, Modular Termination Proofs for Logic and Pure
% Prolog Programs, Dipartimento di Informatica, Universita di Pisa, 1993
% It terminates, but for instance mergesort([4,1,3,2],L,[4,1,3,2]) gives
% the answer 2401 times.


mergesort([],[],Ls).
mergesort([X],[X],Ls).
mergesort(Xs,Ys,[H|Ls]) :- split(Xs,X1s,X2s,[H|Ls]),
              mergesort(X1s,Y1s,Ls), mergesort(X2s,Y2s,Ls), 
              merge(Y1s,Y2s,Ys,[H|Ls]).

split([],[],[],Ls).
split([X|Xs],[X|Ys],Zs,[H|Ls]) :- split(Xs,Zs,Ys,Ls).

merge([],Xs,Xs,Ls).
merge(Xs,[],Xs,Ls).
merge([X|Xs],[Y|Ys],[X|Zs],[H|Ls]) :- X=<Y, merge(Xs,[Y|Ys],Zs,Ls).
merge([X|Xs],[Y|Ys],[Y|Zs],[H|Ls]) :- X>Y, merge([X|Xs],Ys,Zs,Ls).
