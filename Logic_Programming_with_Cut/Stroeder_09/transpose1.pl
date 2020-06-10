% Author: Thomas Stroeder
% terminating

%query: transpose(i,o).
transpose(A,B) :- transpose_aux(A,[],B).

transpose_aux([],Y,Z) :- !, eq(Y,Z).
transpose_aux(R,_,L) :-
   head(R,Rh),
   tail(R,Rt),
   row2col(Rh,L,Cols,Accm),
   transpose_aux(Rt,Accm,Cols).

row2col([],X,Y,Z) :- !, eq(X,[]), eq(Y,[]), eq(Z,[]).
row2col(X,Y,C,A) :-
   head(X,Xh),
   head(Y,Yh),
   head(Yh,Xh),
   head(A,[]),
   tail(X,Xt),
   tail(Y,Yt),
   tail(Yh,Yht),
   head(C,Yht),
   tail(C,Ct),
   tail(A,At),
   row2col(Xt,Yt,Ct,At).

head([],_).
head([H|_],H).

tail([],[]).
tail([_|T],T).

eq(X,X).
