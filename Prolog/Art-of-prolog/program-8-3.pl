%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:factorial(g,f).
factorial(N,F) :- factorial(0,N,1,F).
factorial(I,N,T,F) :- I < N, I1 is I + 1, T1 is T * I1, factorial(I1,N,T1,F).
factorial(N,N,F,F).
