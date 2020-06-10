% Prolog and Natural-Language Analysis
% Fernando C. N. Pereira and Stuart M. Shieber
% terminating

%query: shuffle(i,i,o).
shuffle(A,[],A) :- !.
shuffle([],B,B) :- !.
shuffle([A|RestA],B,[A|Shuffled]) :- shuffle(RestA,B,Shuffled).
shuffle(A,[B|RestB],[B|Shuffled]) :- shuffle(A,RestB,Shuffled).
