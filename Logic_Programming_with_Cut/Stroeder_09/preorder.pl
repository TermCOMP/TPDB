% Adapted from LP/SGST06/preorder.pl
% terminating

%query: preorder(i,o).
preorder(X,Y) :- pdl(X,Y-[]).

pdl(nil,Y) :- !, eq(Y,X-X).
pdl(T,[X|Xs]-Zs) :- value(T,X), left(T,L), right(T,R), pdl(L,Xs-Ys), pdl(R,Ys-Zs).

left(nil,nil).
left(tree(L,_,_),L).

right(nil,nil).
right(tree(_,_,R),R).

value(nil,_).
value(tree(_,X,_),X).

eq(X,X).
