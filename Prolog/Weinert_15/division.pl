%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
%query:my_divide(f).
my_divide(X) :- X > 0, my_divide(X // 2).
my_divide(X) :- 0 is X.
