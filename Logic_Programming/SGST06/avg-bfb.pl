%query: avg(i,o,i).

/* from Dershowitz & Hoot, 1995 */

avg(s(X),Y,Z) :- avg(X,s(Y),Z).
avg(X,s(s(s(Y))),s(Z)) :- avg(s(X),Y,Z).
avg(0,0,0).
avg(0,s(0),0).
avg(0,s(s(0)),s(0)).
