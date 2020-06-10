% Example for using rational trees for grammars
% Adapted from Alain Colmerauer: Prolog and infinite trees

%query: q(i).
q(X) :- grammar(G), terminal-string(X), produces(G,X).

grammar(S) :- equal(S,or(N,and(a,and(S,b)))), equal(N,or(c,and(c,N))).

equal(X,X).

terminal-string(nil).
terminal-string(and(A,X)) :- terminal(A), terminal-string(X).

terminal(a).
terminal(b).
terminal(c).

produces(G,X) :- gives(G,X,nil).

gives(or(P,Q),X,Y) :- gives(P,X,Y).
gives(or(P,Q),X,Y) :- gives(Q,X,Y).
gives(and(P,Q),X,Z) :- gives(P,X,Y), gives(Q,Y,Z).
gives(A,and(A,X),X) :- terminal(A).
