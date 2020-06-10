% Adapted from LP/SGST06/btapplast.pl
% terminating

%query: goal(i,o,o).
goal(A,B,C) :- s2t(A,T), tapplast(T,B,C).

tapplast(L,X,Last) :- tappend(L,node(nil,X,nil),LX), tlast(Last,LX).

tlast(X,node(nil,X,nil)).
tlast(X,node(L,_,_)) :- tlast(X,L).
tlast(X,node(_,_,R)) :- tlast(X,R).

tappend(nil,Y,Z) :- !, eq(Y,Z).
tappend(T,T1,node(T1,X,T2)) :- left(T,nil), right(T,T2), value(T,X).
tappend(T,T2,node(T1,X,T2)) :- left(T,T1), right(T,nil), value(T,X).
tappend(T,T3,node(U,X,T2)) :- left(T,T1), right(T,T2), value(T,X), tappend(T1,T3,U).
tappend(T,T1,node(T1,X,U)) :- left(T,T1), right(T,T2), value(T,X), tappend(T2,T3,U).

s2t(0,L) :- !, eq(L,nil).
s2t(X,node(T,_,T)) :- p(X,P), s2t(P,T).
s2t(X,node(nil,_,T)) :- p(X,P), s2t(P,T).
s2t(X,node(T,_,nil)) :- p(X,P), s2t(P,T).
s2t(X,node(nil,_,nil)).

left(nil,nil).
left(node(L,_,_),L).

right(nil,nil).
right(node(_,_,R),R).

value(nil,nil).
value(node(_,X,_),X).

p(0,0).
p(s(X),X).

eq(X,X).
