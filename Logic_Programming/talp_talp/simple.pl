%query: p(i,o).
% from Harald Ganzinger, Uwe Waldmann:
%      Termination Proofs of Well-Moded Logic Programs
%      via Conditional Rewrite Systems


% mode: p[i,o]
p(X, g(X)).
p(X, f(X)) :- p(X, g(Y)).


      
