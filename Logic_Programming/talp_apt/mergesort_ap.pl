%query: mergesort(i,o,o).
% this is a version of mergesort that appears in
% K. A. Apt and D. Pedreschi, Modular Termination Proofs for Logic and Pure
% Prolog Programs, Dipartimento di Informatica, Universita di Pisa, 1993
% mergesort(Xs,Ys,Xs) if Ys is an ordered permutation of the list Xs


% mode: mergesort[i,o,o]
mergesort([],[],Ls).
mergesort([X],[X],Ls).
mergesort([X,Y|Xs],Ys,[H|Ls]) :- split([X,Y|Xs],X1s,X2s,[H|Ls]),
              mergesort(X1s,Y1s,Ls), mergesort(X2s,Y2s,Ls), 
              merge(Y1s,Y2s,Ys,[H|Ls]).

% mode: split[i,o,o,o]
split([],[],[],Ls).
split([X|Xs],[X|Ys],Zs,[H|Ls]) :- split(Xs,Zs,Ys,Ls).

% mode: merge[i,i,o,i]
merge([],Xs,Xs,Ls).
merge(Xs,[],Xs,Ls).
merge([X|Xs],[Y|Ys],[X|Zs],[H|Ls]) :- le(X,Y), merge(Xs,[Y|Ys],Zs,Ls).
merge([X|Xs],[Y|Ys],[Y|Zs],[H|Ls]) :- gt(X,Y), merge([X|Xs],Ys,Zs,Ls).

% mode: gt[i,i]
gt(s(X), s(Y)) :- gt(X, Y).
gt(s(0), 0).

% mode: le[i,i]
le(s(X), s(Y)) :- le(X, Y).
le(0, s(0)).
le(0, 0).

