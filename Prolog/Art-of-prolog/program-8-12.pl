%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:range(g,g,f).
range(M, N, [M|Ns]) :- M < N, M1 is M + 1, range(M1, N, Ns).
range(N, N, [N]).
