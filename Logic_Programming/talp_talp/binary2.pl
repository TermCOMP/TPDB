%query: add(o,o,i).


add(b, b, b).
add(X, b, X) :- binaryZ(X).
add(b, Y, Y) :- binaryZ(Y).
add(X, Y, Z) :- addz(X, Y, Z).

addx(one(X),  b, one(X))  :- binary(X).
addx(zero(X), b, zero(X)) :- binaryZ(X).
addx(X, Y, Z) :- addz(X, Y, Z).

addy(b, one(Y),  one(Y))  :- binary(Y).
addy(b, zero(Y), zero(Y)) :- binaryZ(Y).
addy(X, Y, Z) :- addz(X, Y, Z).

addz(zero(X), zero(Y), zero(Z)) :- addz(X, Y, Z).
addz(zero(X), one(Y),  one(Z))  :- addx(X, Y, Z).
addz(one(X),  zero(Y), one(Z))  :- addy(X, Y, Z).
addz(one(X),  one(Y),  zero(Z)) :- addc(X, Y, Z).

addc(b, b, one(b)).
addc(X, b, Z) :- succZ(X, Z).
addc(b, Y, Z) :- succZ(Y, Z).
addc(X, Y, Z) :- addC(X, Y, Z).

addX(zero(X), b, one(X))  :- binaryZ(X).
addX(one(X),  b, zero(Z)) :- succ(X,Z).
addX(X, Y, Z) :- addC(X, Y, Z).

addY(b, zero(Y), one(Y))  :- binaryZ(Y).
addY(b, one(Y),  zero(Z)) :- succ(Y,Z).
addY(X, Y, Z) :- addC(X, Y, Z).

addC(zero(X), zero(Y), one(Z))  :- addz(X, Y, Z).
addC(zero(X), one(Y),  zero(Z)) :- addX(X, Y, Z).
addC(one(X),  zero(Y), zero(Z)) :- addY(X, Y, Z).
addC(one(X),  one(Y),  one(Z))  :- addc(X, Y, Z).

binary(b).
binary(zero(X)) :- binaryZ(X).
binary(one(X))  :- binary(X).

binaryZ(zero(X)) :- binaryZ(X).
binaryZ(one(X))  :- binary(X).

succ(b, one(b)).
succ(zero(X), one(X))  :- binaryZ(X).
succ(one(X),  zero(Z)) :- succ(X, Z).

succZ(zero(X), one(X))  :- binaryZ(X).
succZ(one(X),  zero(Z)) :- succ(X, Z).

times(one(b),  X, X      ).
times(zero(R), S, zero(RS)) :- times(R, S, RS).
times(one(R),  S, RSS    ) :- times(R, S, RS),  add(S, zero(RS), RSS).


/*
b2i(b, 0).
b2i(zero(X), Z) :- b2i(X, Y), Z is (Y << 1).
b2i(one(X),  Z) :- b2i(X, Y), Z is (Y << 1) + 1.

i2b(0, b).
i2b(X, Z) :- X > 0, Bit is X / 1,Y is X >> 1, i2b(Bit, Y, Z).
i2b(0, X, zero(Z)) :- i2b(X, Z).
i2b(1, X, one(Z))  :- i2b(X, Z). 
*/
