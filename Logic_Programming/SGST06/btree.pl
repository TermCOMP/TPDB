%query: goal(i).

/* tree check for finite trees */

tree(nil).
tree(node(L,X,R)) :- tree(L), tree(R).

s2t(s(X),node(T,Y,T)):- s2t(X,T).
s2t(s(X),node(nil,Y,T)):- s2t(X,T).
s2t(s(X),node(T,Y,nil)):- s2t(X,T).
s2t(s(X),node(nil,Y,nil)).
s2t(0, nil).

goal(X) :- s2t(X,T), tree(T).