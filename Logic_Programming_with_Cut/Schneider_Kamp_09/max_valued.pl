% Prolog and Natural-Language Analysis
% Fernando C. N. Pereira and Stuart M. Shieber
% terminating

%query: max_valued(i,o).
max_valued([Head|Tail],Max) :- max_Valued(Tail,Head,Max).
max_valued([],Term,Term).
max_valued([Head|Tail],Term,Max) :- higher_valued(Head,Term), !, max_valued(Tail,Head,Max).
max_valued([Head|Tail],Term,Max) :- higher_valued(Term,Head), max_valued(Tail,Term,Max).

higher_valued(X,Y) :- greater(s(X),Y).

greater(s(_),0).
greater(s(X),s(Y)) :- greater(X,Y).