%query: mergesort(o,i).


mergesort([],[]).
mergesort([X],[X]).
mergesort([X,Y|Xs],Ys) :-
        split([X,Y|Xs],X1s,X2s),
        mergesort(X1s,Y1s),
        mergesort(X2s,Y2s),
        merge(Y1s,Y2s,Ys).

split([],[],[]).
split([X|Xs],[X|Ys],Zs) :-
        split(Xs,Zs,Ys).

merge([],Xs,Xs).
merge(Xs,[],Xs).
merge([X|Xs],[Y|Ys],[X|Zs]) :-
        X=Y,
        merge([X|Xs],Ys,Zs).
