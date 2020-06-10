%Source: http://research.cs.queensu.ca/home/cisc260/2015w/examples/Arithmetic.pl
%query:count(g,g,f).
count(Item,[],0).
count(Item,[X|Xs],Result) :-
	Item = X,
	count(Item,Xs,TailCount),
	Result is TailCount+1.
count(Item,[X|Xs],TailCount) :-
	Item \= X,
	count(Item,Xs,TailCount).
