% Example for termination because of unification without occurs-check and cuts
% Author: Thomas Stroeder

%query: t.
t :- X = f(0,f(1,f(0,X))), !, g(X).
t :- t.
g(f(X,f(X,_))) :- !.
g(f(_,X)) :- g(X).