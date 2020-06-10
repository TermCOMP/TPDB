% The even predicate using unification without occurs-check
% Author: Thomas Stroeder

%query: even(i).
even(X) :- eq(Y,f(e,f(o,Y))), c(Y,X).
c(f(e,_),0).
c(f(_,X),s(Y)) :- c(X,Y).
eq(X,X).
