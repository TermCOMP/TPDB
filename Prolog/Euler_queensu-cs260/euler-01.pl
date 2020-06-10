%Source: Implementation of problems 1 through 4 from www.projecteuler.net
%query: euler1(i,i,o).

euler1(Low, High, Result) :- High < Low, Result is 0.
euler1(Low, High, Return) :- Low =< High, Low mod 3 =:= 0, !, euler1(Low + 1, High, RecurseResult), Return is RecurseResult + Low.
euler1(Low, High, Return) :- Low =< High, Low mod 5 =:= 0, !, euler1(Low + 1, High, RecurseResult), Return is RecurseResult + Low.
euler1(Low, High, Return) :- Low =< High, euler1(Low + 1, High, Return).
