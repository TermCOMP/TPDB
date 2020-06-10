%query: bid(i,o,o,o).

/*
    bid.pl -- compute opening bid for bridge hand

    This program uses rules set forth in Jacoby (1988) counting
    high-card points, distribution points, and a few heuristics
    like support in 10s and 9s and long suits.

    Method -- find points for each suit independently, sum them,
    then adjust for combinations.  Within a suit, compute high-
    card points, then distribution, then adjust for special
    combinations.

    Feb 1991 -- so far the program only counts points; we need
    a bridge expert to add rules for make_bid/4.

    Written By: John Conery
*/

%%  To test, try "goal"


%:- entry(bid(X,Y,Z,W),[share([[Y],[Z],[W]]),free([Y,Z,W]),ground([X])]).

bid(Hand,Attributes,Points,Bid) :-
    sort_hand(Hand,SortedHand) ,
    evaluate(SortedHand,Attributes,Points) ,
    make_bid(SortedHand,Attributes,Points,Bid).

evaluate(Hand,[],P) :-
    hcp(Hand,0,HCP) ,
    adjustments(Hand,MP) ,
    P is HCP + MP.

adjustments(_,0).

make_bid(Hand,Attributes,Points,'punt...').


/*
    hcp(H,Si,So) -- count the high-card-points in hand H
*/

hcp([],N,N).
hcp([_X=C|Sn],Ni,No) :-
    hcp_suit(C,N) ,
    Nt is N + Ni ,
    hcp(Sn,Nt,No).

hcp_suit(S,P) :-
    honors(S,0,HP) ,
    dist(S,DP) ,
    misc(S,MP) ,
    P is HP + DP + MP.

/*
    Count the honors in a suit.  The suit is ordered, so we can stop as
    soon as we hit a low card.  The first clause catches void suits and
    cases when a suit has only honors.
*/

honors([],Pi,Pi).
honors([C1|Cn],Pi,Po) :-
    honor(C1,P) ,
    P > 0 ,
    Pt is P+Pi ,
    honors(Cn,Pt,Po).
honors([C1|Cn],Pi,Pi) :-
    honor(C1,0).                                % honor(C) = 0 if C not an honor

honor(C,N) :- face_card(C,N).
honor(C,0) :- integer(C).

face_card(ace,4).
face_card(king,3).
face_card(queen,2).
face_card(jack,1).

dist([],3).
dist([_],2).
dist([_,_],1).
dist([_,_,_|_],0).


% Only one of the rules for misc/2 will be applied; if more than
% one can be used, use 'bagof' in the call and sum the results.
% A challenge for OPAL: how to code this, w/o metacall...
% This version is using the first version that succeeds.

% 1. singleton ace, subtract a point (worth 5, not 6); singleton
%    king is worth 2, doubleton queen or jack is worthless.

misc([ace],-1).
misc([king],-2).
misc([queen,_],-2).                             % take off 3 for [queen,jack] ?
misc([jack,_],-1).

% 2. long suits -- 6 cards headed by 3 honors, add 1 for
%    each extra card.

misc([_X,_Y,H3|Rem],P) :-
    honor(H3,X) ,
    X > 0 ,
    length(Rem,N) ,
    N > 2 ,
    P is N-2.

% no rules apply....

misc(_,0).


% Sorting a hand.  Sort into suits, and within a suit, sort
% cards into descending order.  Suits are always returned with
% majors first, minors last.

sort_hand(Hand,SortedHand) :-
    split_suits(Hand,SplitHand) ,
    sort_suits(SplitHand,SortedHand).

% Here's an interesting tradeoff.  In Prolog, the output from
% filter should be two lists, one containing the items that pass
% the test and one containing all the other items.  Later calls
% to filter will be faster, since the input lists get shorter,
% and one fewer call is needed (the output of the second to last
% call has all the clubs).  However, that forces sequential
% execution, since the output of one call is input to the next.

%% clause 27

split_suits(Hand,[spades=S,hearts=H,diamonds=D,clubs=C]) :-
    filter(Hand,spades,S) ,
    filter(Hand,hearts,H) ,
    filter(Hand,diamonds,D) ,
    filter(Hand,clubs,C).

filter([],_,[]).
filter([Card-Suit|In],Suit,[Card|Out]) :- filter(In,Suit,Out).
filter([_A-X|In],Suit,Out) :- Suit \== X , filter(In,Suit,Out).

sort_suits([],[]).
sort_suits([S=Ci|In],[S=Co|Out]) :-
    i_sort(Ci,[],Co) ,
    sort_suits(In,Out).

% Sort a list of cards, using a simple insertion sort (the lists
% are likely shorter than 6 cards).

i_sort([],L,L).
i_sort([C1|Cn],Li,Lo) :-
    insert(C1,Li,Lt) ,
    i_sort(Cn,Lt,Lo).

insert(X,[],[X]).
insert(X,[Y|Z],[X,Y|Z]) :- higher(X,Y).
insert(X,[Y|Z],[Y|L])   :- lower(X,Y) , insert(X,Z,L).

% higher(X,Y) -- the rank of card X is greater than or equal to the
%    rank of card Y.
% lower(X,Y) -- the rank of card X is strictly less than the rank of
%    card Y.

higher(ace,_).
higher(king,X)  :- X \== ace.
higher(queen,X) :- X \== ace , X \== king.
higher(jack,X)  :- integer(X).
higher(jack,jack).
higher(X,Y)     :- integer(X) , integer(Y) , X >= Y.

lower(king,ace).
lower(queen,X)  :- honor(X,N) , N > 2.
lower(jack,X)   :- honor(X,N) , N > 1.
lower(X,Y)      :- integer(X) , honor(Y,_M).
lower(X,Y)      :- integer(X) , integer(Y) , X < Y.


% -----------------------------------------------------------------------
% a goal
% :- noparallelize.
goal :- bid([ace-clubs, 3-hearts, 4-spades, 4-diamonds,
            king-clubs, jack-hearts, ace-spades, ace-hearts,
            10-clubs, 9-clubs, 6-clubs, queen-diamonds, king-spades],
        Attr,Pts,Bid).
/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         This piece has been included for the simulation process    %

no_trace_main :- 
	time(_),
        bid([ace-clubs,3-hearts,4-spades,4-diamonds,king-clubs,jack-hearts,
	     ace-spades,ace-hearts,10-clubs,9-clubs,6-clubs,queen-diamonds,
	     king-spades],Attr,Pts,Bid),
	time(T),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write((Attr,Pts,Bid)), nl.

trace_main(Eventfile):-
	time(_),
	start_event_trace, 
        bid([ace-clubs,3-hearts,4-spades,4-diamonds,king-clubs,jack-hearts,
	     ace-spades,ace-hearts,10-clubs,9-clubs,6-clubs,queen-diamonds,
	     king-spades],Attr,Pts,Bid),
	time(T),
	stop_event_trace,
	save_trace(Eventfile),
	write('Executed in '), write(T), write(' mS.'), nl,
	write('Result '), write((Attr,Pts,Bid)),nl.

save_trace(X) :-
	write('Saving trace in file '), write(X), write('... '), 
	open(X,write,Y),
	save_event_trace(Y),
	close(X),
	write('done.'), nl.

time(T) :- statistics(runtime,[_,T]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
*/
