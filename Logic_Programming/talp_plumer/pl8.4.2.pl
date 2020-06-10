%query: e(i,o).

% mode: e[i,o]
e(L,T) :- t(L,T).
e(L,T) :- t(L,[plus|C]),e(C,T).

% mode: t[i,o]
t(L,T) :- n(L,T).
t(L,T) :- n(L,[star|C]),t(C,T).

% mode: n[i,o]
n([L|T],T) :- z(L).
n([lbrace|A],B) :- e(A,[rbrace|B]).

% mode: z[i]
z(a).
z(b).
z(c).

