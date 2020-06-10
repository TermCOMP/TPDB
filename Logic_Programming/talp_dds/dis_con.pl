%query: dis(i).

% mode: dis[i]
dis(or(B1,B2)) :- con(B1),dis(B2).
dis(B) :- con(B).

% mode: con[i]
con(and(B1,B2)) :- dis(B1),con(B2).
con(B) :- bool(B).

% mode: bool[i]
bool(0).
bool(1).
