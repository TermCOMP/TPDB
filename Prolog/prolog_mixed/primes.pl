%query: primes(i,o).

% From "Programming in Prolog" by Clocksin and Mellish, 1981

primes(Limit, Ps) :- integers(2, Limit, Is), sift(Is, Ps).

integers(Low, High, [Low|Rest]) :-
    Low =< High, !, M is Low+1, integers(M, High, Rest).
integers(_, _, []).

sift([], []).
sift([I|Is],[I|Ps]) :- remove(I, Is, New), sift(New, Ps).

remove(P, [], []).
remove(P, [I|Is], [I|Nis]):-
    \+ 0 is I mod P,
    !, remove(P, Is, Nis).
remove(P, [I|Is], Nis) :- 0 is I mod P, !, remove(P, Is, Nis).
