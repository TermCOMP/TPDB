%Source: http://research.cs.queensu.ca/home/cisc260/2015w/examples/Arithmetic.pl
%query:evenSpaced(g).
evenSpaced([_,_]).
evenSpaced([X,Y,Z|Xs]) :-
    Diff is Y-X,
    Diff =:= Z-Y,
    evenSpaced([Y,Z|Xs]).
