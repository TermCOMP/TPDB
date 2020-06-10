% The First 10 Prolog programming Contests

%query: cycle(i,i,o).
cycle(Dividend,Divisor,Repetition) :-
   Remainder is Dividend mod Divisor,
   RemQuotList = [],
   divide(Remainder,Divisor,RemQuotList,Repetition).

divide(Remainder,_,RemQuotList,Repetition) :-
   find_repetition(RemQuotList,Remainder,[],Repetition),
   !.
divide(Remainder,Divisor,RemQuotList,Repetition) :-
   Remainder10 is 10 * Remainder,
   Quot is Remainder10 // Divisor,
   NewRemainder is Remainder10 - Divisor*Quot,
   divide(NewRemainder,Divisor,[Remainder*Quot|RemQuotList],Repetition).

find_repetition([X*Quot|RemQuotList],Remainder,In,Out) :-
   ( Remainder == X ->
           Out = [Quot|In]
   ;
           find_repetition(RemQuotList,Remainder,[Quot|In],Out)
   ).
