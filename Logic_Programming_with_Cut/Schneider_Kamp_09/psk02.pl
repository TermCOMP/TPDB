% Author: Peter Schneider-Kamp
% terminating

%query: p(o).
p(X) :- q(X), r(X).
p(X) :- X=2.
q(X) :- X=1,!.
q(X) :- X=3.
r(X) :- X=1,!.
r(X) :- X=4.
=(X,X).
