% The even predicate using unification without occur check (nonterminating without cuts)
% Author: Thomas Stroeder

%query: e(i).
e(X) :- Y = f(e,f(o,Y)), !, c(Y,X).
e(X) :- e(X).
c(f(e,_),0).
c(f(_,X),s(Y)) :- c(X,Y).
