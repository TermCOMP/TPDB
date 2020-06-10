%Source: Random examples used for debugging termination analysis for arithmetic Prolog programs
%query:find(g, g).
% find(Vec, Val) searches through the given vector and terminates when it finds a value larger than Val.
% If it finds none, it increases all values in the vector by 1 and continues.

find([], _) :- !.
find(Vec, Val) :- find(Vec, Val, Vec).

find([], Val, Start) :- addOne(Start, StartPlusOne), find(StartPlusOne, Val).
% will not terminate without the cut here
find([X|_], Val, _) :- X >= Val, !.
find([X|Xs], Val, Start) :- X < Val, !, find(Xs, Val, Start).

addOne([], []).
addOne([X|Xs], [Y|Ys]) :- Y is X + 1, addOne(Xs, Ys).
