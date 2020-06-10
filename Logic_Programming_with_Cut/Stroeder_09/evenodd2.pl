% Author: Thomas Stroeder
% non-terminating for even(s(0))

%query: even(i).
even(0) :- !.
even(N) :- p(N,P), odd(P).

odd(s(0)) :- !.
odd(N) :- p(N,P), even(P).

p(0,0).
p(s(X),X).
