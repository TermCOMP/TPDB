% Author: Peter Schneider-Kamp
% terminating

%query: q(i).
q(X) :- not_zero(X), p(X,Y), q(Y).
p(0,0).
p(s(X),X).
zero(0).
not_zero(X) :- zero(X),!,failure(a).
not_zero(_).
failure(b).
