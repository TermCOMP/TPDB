%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:sumlist(g,f).
sumlist([I|Is], Sum) :- sumlist(Is, IsSum), Sum is I + IsSum.
sumlist([], 0).
