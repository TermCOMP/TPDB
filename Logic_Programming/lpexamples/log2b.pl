%query: log2(i,o).
/* author: Michael Codish
   date:    March 2003

 log2(X,Y) :- Y equals the integer log base 2 of X.

 Namely, the largest integer smaller or equal to the 
 log base 2 of X
*/


log2(X,Y) :- log2(X,0,s(0),Y).


% log2(X,H,A,Y) :- computes Y equals the integer log base 2 of X.
% H accumulates "half" of X and A accumulates the number of times
% X was halved.

log2(s(s(X)),Half,Acc,Y) :- log2(X,s(Half),Acc,Y).

log2(X,s(s(Half)),Acc,Y) :- small(X), log2(Half,s(0),s(Acc),Y).

log2(X,Half,Y,Y) :- small(X),small(Half).

small(0). 
small(s(0)).


/*

    ?- log2(s(s(s(s(s(s(s(s(0)))))))), Y).
    Y = s(s(s(0)))

    ?- log2(s(s(s(s(s(s(s(s(s(s(0)))))))))), Y).
    Y = s(s(s(0)))

*/
