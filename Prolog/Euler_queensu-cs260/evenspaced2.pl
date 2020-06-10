%Source: http://research.cs.queensu.ca/home/cisc260/2015w/examples/Arithmetic.pl
%query:evenSpaced2(g).
evenSpacedWithDiff([X,Y],Diff) :-
    Diff =:= Y-X.
evenSpacedWithDiff([X,Y|Tail],Diff) :-
    Diff =:= Y-X,
    evenSpacedWithDiff([Y|Tail],Diff).

evenSpaced2([_,_]).
evenSpaced2([X,Y|Ys]) :-
    Diff is Y-X,
    evenSpacedWithDiff([Y|Ys],Diff).
