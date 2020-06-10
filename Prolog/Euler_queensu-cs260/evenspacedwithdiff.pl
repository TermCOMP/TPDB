%Source: http://research.cs.queensu.ca/home/cisc260/2015w/examples/Arithmetic.pl
%query:evenSpacedWithDiff(g,g).
evenSpacedWithDiff([X,Y],Diff) :-
    Diff =:= Y-X.
evenSpacedWithDiff([X,Y|Tail],Diff) :-
    Diff =:= Y-X,
    evenSpacedWithDiff([Y|Tail],Diff).
