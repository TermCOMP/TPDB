%query: palindrome(i).

/* Folklore. */

palindrome(L):- halves(L,X1s,X2s,EvenOdd), eq(EvenOdd,even), eq(X1s,X2s).
palindrome(L):- halves(L,X1s,X2s,EvenOdd), eq(EvenOdd,odd), last(X1s,_,X2s). 
                
halves([],[],[],even).
halves([X],[X],[],odd).
halves([T,Y|Xs],[T|Ts],[R|Rs],EvenOdd):-
        last([Y|Xs],R,Rests),
        halves(Rests,Ts,Rs,EvenOdd).    


last([T],T,[]).
last([H|T],X,[H|M]) :-
        last(T,X,M).

eq(X,X).
