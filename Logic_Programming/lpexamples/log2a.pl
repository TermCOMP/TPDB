%query: log2(i,o).
/* author: Michael Codish
   date:    March 2003

 log2(X,Y) :- Y equals the integer log base 2 of X.

 Namely, the largest integer smaller or equal to the 
 log base 2 of X

*/




log2(X,Y) :- log2(X,0,Y).



log2(0,I,I).
log2(s(0),I,I).
log2(s(s(X)),I,Y) :- half(s(s(X)),X1), log2(X1,s(I),Y).


half(0,0).
half(s(0),0).
half(s(s(X)),s(Y)) :- half(X,Y).


/*

    ?- log2(s(s(s(s(s(s(s(s(0)))))))), Y).
    Y = s(s(s(0)))

    ?- log2(s(s(s(s(s(s(s(s(s(s(0)))))))))), Y).
    Y = s(s(s(0)))

*/
