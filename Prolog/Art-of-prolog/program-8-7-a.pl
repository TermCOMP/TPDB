%Source: Sterling, Shapiro - The Art of Prolog. Program 8.1 - Program 8.12.
%query:inner_product(g,g,f).
inner_product([X|Xs], [Y|Ys], IP) :- inner_product(Xs, Ys, IP1), IP is X * Y + IP1.
inner_product([], [], 0).
