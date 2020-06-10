% Problem Solving with Prolog by John Stobo
% terminating

%query: hidden_flatten(i,o,o).
hidden_flatten([],L,L).
hidden_flatten([[H|T]|L],S,F) :- !, hidden_flatten(L,S,Lf), hidden_flatten([H|T],Lf,F).
hidden_flatten([H|T],S,[H|L]) :- hidden_flatten(T,S,L).
