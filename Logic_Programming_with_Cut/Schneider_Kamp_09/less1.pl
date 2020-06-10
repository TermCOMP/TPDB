% Author: Peter Schneider-Kamp
% terminating

%query: p(i,i).
p(X,Y) :- less(X,Y),!,p(s(X),Y).
less(0,s(_)).
less(s(X),s(Y)) :- less(X,Y).
