%query: goal(i).

/* concatenate finite trees */

tappend(nil,T,T).
tappend(node(nil,X,T2),T1,node(T1,X,T2)).
tappend(node(T1,X,nil),T2,node(T1,X,T2)).
tappend(node(T1,X,T2),T3,node(U,X,T2)) :- tappend(T1,T3,U).
tappend(node(T1,X,T2),T3,node(T1,X,U)) :- tappend(T2,T3,U).

s2t(s(X),node(T,Y,T)):- s2t(X,T).
s2t(s(X),node(nil,Y,T)):- s2t(X,T).
s2t(s(X),node(T,Y,nil)):- s2t(X,T).
s2t(s(X),node(nil,Y,nil)).
s2t(0, nil).

goal(X) :- s2t(X,T1), tappend(T1,T2,T3).
