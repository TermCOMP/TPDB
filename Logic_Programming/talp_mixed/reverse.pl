%query: reverse(i,o).

% mode: reverse[i,o]
reverse(L, LR) :- revacc(L, LR, []).

% mode: revacc[i,o,i]
revacc([], L, L).
revacc([EL|T], R, A) :- revacc(T, R, [EL|A]).








