% Principles of Logic and Logic Programming by G. Metakides, A. Nerode
% terminating

%query: p.
p :- thief(john).

thief(john).
thief(X) :- thief(X), !.
