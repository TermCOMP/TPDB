%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:between(g,g,g).
between(I,J,I) :- I =< J.
between(I,J,K) :- I < J, I1 is I + 1, between(I1, J, K).
