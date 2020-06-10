% Simple example for termination because of unification without occurs-check and cuts
% Author: Thomas Stroeder

%query: t.
t :- eq(X,f(X)), !.
t :- t.
eq(X,X).