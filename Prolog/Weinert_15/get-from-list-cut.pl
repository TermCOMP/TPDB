%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
% terminating
%query:get(f,f,f)
get([X|XS], 0, Res) :- !, Res = X.
get([X|XS], Y, Res) :- !, YP is Y - 1, get(XS, YP, Res).
