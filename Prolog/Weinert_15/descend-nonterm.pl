%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
% nonterminating
%query: desc(b).
desc(X) :- desc(X-1).
