%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
%query:extend(g,f).
% extend(In,Out) is true if Out is a list that contains all numbers between the minimal and the maximal number in In.

extend(In, Out) :- min(In, Min), max(In, Max), range(Min, Max, Out).

range(Low, High, []) :- Low > High.
range(Low, High, Result) :- Low =< High, range(Low + 1, High, RecursiveResult), Temp is Low, Result = [Temp|RecursiveResult].

min([X], X).
min([X|Xs], X) :- min(Xs, Y), X =< Y.
min([X|Xs], Y) :- min(Xs, Y), X > Y.

max([X], X).
max([X|Xs], X) :- max(Xs, Y), X >= Y.
max([X|Xs], Y) :- max(Xs, Y), X < Y.
