%query: factorial(i,o).
% From "The Art of Prolog" by Sterling and Shapiro


%::::::::::::::
%ss8.2
%::::::::::::::

factorial1(N,F) :- N > 0, N1 is N-1, factorial1(N1,F1), F is N*F1.
factorial1(0,1).

%::::::::::::::
%ss8.3
%::::::::::::::

factorial2(N,F) :- factorial2(0,N,1,F).
factorial2(I,N,T,F):-
   I < N, I1 is I+1, T1 is T*I1, factorial2(I1,N,T1,F).
factorial2(N,N,F,F).

%::::::::::::::
%ss8.4
%::::::::::::::

factorial3(N,F) :- factorial3(N,1,F).
factorial3(N,T,F):-
   N > 0, T1 is T*N, N1 is N-1, factorial3(N1,T1,F).
factorial3(0,F,F).
