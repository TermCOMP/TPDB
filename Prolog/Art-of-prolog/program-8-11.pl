%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:find_length(g,f).
find_length([X|Xs], N) :- find_length(Xs, N1), N is N1 + 1.
find_length([], 0).
