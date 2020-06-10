% Principles of Logic and Logic Programming by G. Metakides, A. Nerode
% non-terminating for thief(bill)

%query: thief(i).
thief(john).
thief(X) :- thief(X), !.
