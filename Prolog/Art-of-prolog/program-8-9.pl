%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:maximum(g,f).
maximum([X|Xs], M) :- maximum(Xs, X, M).
maximum([X|Xs], Y, M) :- X =< Y, maximum(Xs, Y, M).
maximum([X|Xs], Y, M) :- X > Y, maximum(Xs, X, M).
maximum([], M, M).
