%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:factorial(g,f).
factorial(N,F) :- N > 0, N1 is N - 1, factorial(N1, F1), F is N * F1.
factorial(0,1).
