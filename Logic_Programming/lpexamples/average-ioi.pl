%query: average(i,o,i).
/* adapted from "Natural Termination" by Dershowitz and Hoot


  average(A,B,C) :- C is the average of natural numbers A and B

*/

average(0,0,0).
average(0,s(0),0).
average(0,s(s(0)),s(0)).

average(s(X),Y,Z) :- average(X,s(Y),Z).
average(X,s(s(s(Y))),s(Z)) :- average(s(X),Y,Z).


/*
    | ?- average(s(0),s(s(0)),Y).

    Y = s(0) ? ;


    | ?- average(A,B,s(0)).

    A = 0,
    B = s(s(0)) ? ;

    A = s(0),
    B = s(0) ? ;

    A = s(s(0)),
    B = 0 ? ;

    and then diverges

*/
