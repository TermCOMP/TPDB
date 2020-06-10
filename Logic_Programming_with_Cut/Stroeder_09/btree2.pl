% Adapted from LP/SGST06/btree.pl
% terminating

%query: goal(i).
goal(X) :- s2t(X,T), tree(T).

tree(nil).
tree(X) :- no(empty(X)), left(T,L), right(T,R), tree(L), tree(R).

s2t(0,nil).
s2t(X,node(T,_,T)) :- no(zero(X)), p(X,P), s2t(P,T).
s2t(X,node(nil,_,T)) :- no(zero(X)), p(X,P), s2t(P,T).
s2t(X,node(T,_,nil)) :- no(zero(X)), p(X,P), s2t(P,T).
s2t(X,node(nil,_,nil)) :- no(zero(X)).

left(nil,nil).
left(node(L,_,_),L).

right(nil,nil).
right(node(_,_,R),R).

p(0,0).
p(s(X),X).

empty(nil).

zero(0).

no(X) :- X, !, failure(a).
no(_).

failure(b).
