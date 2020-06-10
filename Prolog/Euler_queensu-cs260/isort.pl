%Source: http://research.cs.queensu.ca/home/cisc260/2015w/examples/Arithmetic.pl
%query:isort(g,f).

insert(X,[],[X]).
insert(X,[Y|Ys],[X,Y|Ys]) :-
    X =< Y.
insert(X,[Y|Ys],[Y|Tail]) :-
    X > Y,
    insert(X,Ys,Tail).
isort([],[]).
isort([X|Xs],Result) :-
    isort(Xs,SortedTail),
    insert(X,SortedTail,Result).
