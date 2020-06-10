% Author: Thomas Stroeder
% terminating

%query: even(i).
even(0) :- !.
even(N) :- p(N,P), odd(P).

odd(s(0)) :- !.
odd(s(N)) :- even(P).

p(0,0).
p(s(X),X).
