% Author: Peter Schneider-Kamp
% terminating

%query: append(i,o,o).
append(X,Y,Z) :- X=[],!,Y=Z.
append(X,Y,Z) :- X=[H|Xs],!,Z=[H|Zs],append(Xs,Y,Zs).
=(X,X).
