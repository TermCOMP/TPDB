%query: overlap(i,i).

% mode: overlap[i,i]
overlap(Xs,Ys) :- member2(X,Xs),member1(X,Ys).

% mode: has_a_or_b[i]
has_a_or_b(Xs) :- overlap(Xs,[a,b]).

% mode: member1[i,i]
member1(X,[Y|Xs]) :- member1(X,Xs).
member1(X,[X|Xs]).

% mode: member2[o,i]
member2(X,[Y|Xs]) :- member2(X,Xs).
member2(X,[X|Xs]).
