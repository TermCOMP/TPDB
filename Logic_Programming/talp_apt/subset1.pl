%query: subset1(o,i).

% mode: member[i,i]
member(X,[Y|Xs]) :- member(X,Xs).
member(X,[X|Xs]).

% mode: subset[i,i]
subset([X|Xs],Ys) :- member(X,Ys), subset(Xs,Ys).
subset([],Ys).

% mode: member1[o,i]
member1(X,[Y|Xs]) :- member1(X,Xs).
member1(X,[X|Xs]).

% mode: subset1[o,i]
subset1([X|Xs],Ys) :- member1(X,Ys), subset1(Xs,Ys).
subset1([],Ys).
