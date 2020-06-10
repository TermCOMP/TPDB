% Example for unification without occurs-check (now terminating)
% Author: Thomas Stroeder

%query: t.
t :- X = f(0,f(1,f(0,X))), g(X).
g(f(X,f(X,_))) :- !.
g(f(_,X)) :- g(X).