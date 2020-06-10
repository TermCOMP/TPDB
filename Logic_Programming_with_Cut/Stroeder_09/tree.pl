% Author: Thomas Stroeder
% terminating

%query: bin_tree(i).
bin_tree(void) :- !.
bin_tree(T) :-
   left(T,L),
   right(T,R),
   bin_tree(L),
   bin_tree(R).

left(void,void).
left(tree(_,L,_),L).

right(void,void).
right(tree(_,_,R),R).
