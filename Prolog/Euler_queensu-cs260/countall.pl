%Source: http://research.cs.queensu.ca/home/cisc260/2015w/examples/Arithmetic.pl
%query:countAll(g,g,f).
countAll(Item,[],0).
countAll(Item,Other,1) :-
	atomic(Other),
	% In class, we discussed adding Other\=[], but this is
	% not necessary, because Item will not be a list and so
	% will never be equal to []. 
	Other = Item.
countAll(Item,Other,0) :-
	atomic(Other),
	Other \= [], % In this rule, this goal prevents duplicate correct answers.
	Other \= Item.
countAll(Item,[X|Xs],Result) :-
	countAll(Item,X,HeadCount),
	countAll(Item,Xs,TailCount),
	Result is HeadCount+TailCount.
