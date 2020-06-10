% Adapted from LP/talp_apt/lte.pl
% terminating

%query: goal.
goal :- lte(X,s(s(s(s(0))))), even(X).

lte(0,Y).
lte(X,s(Y)) :- no(zero(X)), p(X,P), lte(P,Y).

even(0).
even(s(s(X))) :- even(X).

p(0,0).
p(s(X),X).

zero(0).

no(X) :- X, !, failure(a).
no(_).

failure(b).

