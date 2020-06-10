% Example for the Dyck language D1:
% S -> e
% S -> SS
% S -> oSc
% Author: Thomas Stroeder (compare to Alain Colmerauer: Prolog and infinite trees)

%query: dyck(i).
dyck(X) :- grammar(G), terminal-string(X), produces(G,X).

grammar(S) :- S = or(e,or(and(S,S),and(o,and(S,c)))).

equal(X,X).

terminal-string(nil).
terminal-string(and(A,X)) :- terminal(A), terminal-string(X).

terminal(o).
terminal(c).
terminal(e).

produces(G,X) :- gives(G,X,nil).

gives(or(P,Q),X,Y) :- gives(P,X,Y).
gives(or(P,Q),X,Y) :- gives(Q,X,Y).
gives(and(P,Q),X,Z) :- gives(P,X,Y), gives(Q,Y,Z).
gives(A,and(A,X),X) :- terminal(A).
