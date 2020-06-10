%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:check_length(g,f).
check_length([_|Xs], N) :- N > 0, N1 is N - 1, check_length(Xs, N1).
check_length([], 0).
