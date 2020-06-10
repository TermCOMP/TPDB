% Adapted from LP/SGST06/btree.pl
% terminating

%query: goal(i).
goal(X) :- s2t(X,T), tree(T).

tree(nil) :- !.
tree(X) :- left(T,L), right(T,R), tree(L), tree(R).

s2t(0,L) :- !, eq(L,nil).
s2t(X,node(T,_,T)) :- p(X,P), s2t(P,T).
s2t(X,node(nil,_,T)) :- p(X,P), s2t(P,T).
s2t(X,node(T,_,nil)) :- p(X,P), s2t(P,T).
s2t(X,node(nil,_,nil)).

left(nil,nil).
left(node(L,_,_),L).

right(nil,nil).
right(node(_,_,R),R).

p(0,0).
p(s(X),X).

eq(X,X).