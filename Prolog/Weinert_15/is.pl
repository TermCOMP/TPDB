%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
% nonterminating
%query: my_is(b).
my_is(X) :- X is 1, my_is(X).
