% Adapted from BCGGV05/inorder-fb.pl
% terminating

%query: in_order(o,i).
in_order(void,L) :- !, eq(L,[]).
in_order(T,Xs) :- value(T,X), app(Ls,[X|Rs],Xs), left(T,L), in_order(L,Ls), right(T,R), in_order(R,Rs).

app([],X,X).
app([X|Xs],Ys,[X|Zs]) :- app(Xs,Ys,Zs).

left(void,void).
left(node(L,_,_),L).

right(void,void).
right(node(_,_,R),R).

value(void,_).
value(node(_,X,_),X).

eq(X,X).
