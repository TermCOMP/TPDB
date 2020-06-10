% Example for non-termination because of unification without occurs-check
% Author: Thomas Stroeder

%query: n.
n :- X = f(1,f(0,X)), g(X).
g(f(X,f(X,_))) :- !.
g(f(_,X)) :- g(X).
