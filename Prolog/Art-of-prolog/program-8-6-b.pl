%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:sumlist(g,f).
sumlist(Is, Sum) :- sumlist(Is,0,Sum).
sumlist([I|Is], Temp, Sum) :- Temp1 is Temp + I, sumlist(Is, Temp1, Sum).
sumlist([], Sum, Sum).
