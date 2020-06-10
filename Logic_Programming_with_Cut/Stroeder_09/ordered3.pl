% Author: Thomas Stroeder
% terminating

%query: ordered(i).
ordered([]).
ordered([_]).
ordered(Xs) :- no(max1el_list(Xs)),
               head(Xs,X),
               tail(Xs,Ys),
               head(Ys,Y),
               tail(Ys,Zs),
               less(X,s(Y)),
               ordered([Y|Zs]).

head([],_).
head([X|_],X).

tail([],[]).
tail([_|Xs],Xs).

less(0,s(_)).
less(X,Y) :- no(zero(X)), p(X,Px), p(Y,Py), less(Px,Py).

p(0,0).
p(s(X),X).

max1el_list([]).
max1el_list([_]).

zero(0).

no(X) :- X, !, failure(a).
no(_).

failure(b).
