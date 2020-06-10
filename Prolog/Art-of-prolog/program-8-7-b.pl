%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:inner_product(g,g,f).
inner_product(Xs, Ys, IP) :- inner_product(Xs, Ys, 0, IP).
inner_product([X|Xs], [Y|Ys], Temp, IP) :- Temp1 is X * Y + Temp, inner_product(Xs, Ys, Temp1, IP).
inner_product([], [], IP, IP).
