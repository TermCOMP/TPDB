% Author: Thomas Stroeder
% non-terminating for add(s(X),0,X) in the case of unification with occur check
% and add(s(s(...)),0,s(s(...))) in the case of unification without occur check

%query: add(o,i,o).
add(X,0,X) :- !.
add(X,Y,s(Z)) :- p(Y,P), add(X,P,Z).

p(0,0).
p(s(X),X).
