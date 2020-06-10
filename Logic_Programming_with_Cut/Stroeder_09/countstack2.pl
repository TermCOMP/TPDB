% Adapted from LP/SGST06/countstack.pl
% terminating

%query: countstack(i,o).
countstack(empty,0).
countstack(S,X) :- no(empty_stack(S)), pop(S,nil), popped(S,Pd), countstack(Pd,X).
countstack(S,s(X)) :- no(empty_stack(S)),
                      pop(S,P),
                      no(empty_list(P)),
                      head(P,H),
                      tail(P,T),
                      popped(S,Pd),
                      countstack(push(H,push(T,Pd)),X).

pop(empty,_).
pop(push(P,_),P).

popped(empty,empty).
popped(push(_,Pd),Pd).

head(nil,_).
head(cons(H,_),H).

tail(nil,nil).
tail(cons(_,T),T).

empty_stack(empty).

empty_list(nil).

no(X) :- X, !, failure(a).
no(_).

failure(b).
