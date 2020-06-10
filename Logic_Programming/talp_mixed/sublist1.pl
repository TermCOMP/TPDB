%query: sublist(o,i).

% mode: append[o,o,i]
append([],Ys,Ys).
append([X|Xs],Ys,[X|Zs]) :- append(Xs,Ys,Zs).

% mode: sublist[o,i]
sublist(X,Y) :- append(P,_,Y), append(_,X,P).
