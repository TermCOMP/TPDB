% Author: Thomas Stroeder
% terminating

%query: subset(o,i).
subset(X,Y) :- subsetchecked(X,[],Y).

subsetchecked([],_,_).
subsetchecked([X|Xs],Ys,Zs) :- member(X,Zs), not_member(X,Ys), subsetchecked(Xs,[X|Ys],Zs).

member(X,[X|_]).
member(X,[_|Xs]) :- member(X,Xs).

not_member(X,Y) :- member(X,Y),!,failure(a).
not_member(_,_).

failure(b).