%query: sameleaves(i,i).
% by: Bart Demoen <bmd@cs.kuleuven.ac.be>


% mode: sameleaves[i,i]
sameleaves(leaf(L),leaf(L)) .
sameleaves(tree(T1,T2),tree(S1,S2)) :-
                getleave(T1,T2,L,T),
                getleave(S1,S2,L,S),
                sameleaves(T,S) .

% mode: getleave[i,i,o,o]
getleave(leaf(A),C,A,C) .
getleave(tree(A,B),C,L,O) :- getleave(A,tree(B,C),L,O) .
