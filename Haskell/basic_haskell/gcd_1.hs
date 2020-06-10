{-# htermination (gcd :: MyInt  ->  MyInt  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

primNegInt :: MyInt  ->  MyInt;
primNegInt (Pos x) = Neg x;
primNegInt (Neg x) = Pos x;

negate :: MyInt  ->  MyInt
negate = primNegInt;

absReal0 x MyTrue = negate x;

otherwise :: MyBool;
otherwise = MyTrue;

absReal1 x MyTrue = x;
absReal1 x MyFalse = absReal0 x otherwise;

fromInt :: MyInt  ->  MyInt
fromInt x = x;

primCmpNat :: Nat  ->  Nat  ->  Ordering;
primCmpNat Zero Zero = EQ;
primCmpNat Zero (Succ y) = LT;
primCmpNat (Succ x) Zero = GT;
primCmpNat (Succ x) (Succ y) = primCmpNat x y;

primCmpInt :: MyInt  ->  MyInt  ->  Ordering;
primCmpInt (Pos Zero) (Pos Zero) = EQ;
primCmpInt (Pos Zero) (Neg Zero) = EQ;
primCmpInt (Neg Zero) (Pos Zero) = EQ;
primCmpInt (Neg Zero) (Neg Zero) = EQ;
primCmpInt (Pos x) (Pos y) = primCmpNat x y;
primCmpInt (Pos x) (Neg y) = GT;
primCmpInt (Neg x) (Pos y) = LT;
primCmpInt (Neg x) (Neg y) = primCmpNat y x;

compare :: MyInt  ->  MyInt  ->  Ordering
compare = primCmpInt;

esEsOrdering :: Ordering  ->  Ordering  ->  MyBool
esEsOrdering LT LT = MyTrue;
esEsOrdering LT EQ = MyFalse;
esEsOrdering LT GT = MyFalse;
esEsOrdering EQ LT = MyFalse;
esEsOrdering EQ EQ = MyTrue;
esEsOrdering EQ GT = MyFalse;
esEsOrdering GT LT = MyFalse;
esEsOrdering GT EQ = MyFalse;
esEsOrdering GT GT = MyTrue;

not :: MyBool  ->  MyBool;
not MyTrue = MyFalse;
not MyFalse = MyTrue;

fsEs :: Ordering  ->  Ordering  ->  MyBool
fsEs x y = not (esEsOrdering x y);

gtEs :: MyInt  ->  MyInt  ->  MyBool
gtEs x y = fsEs (compare x y) LT;

absReal2 x = absReal1 x (gtEs x (fromInt (Pos Zero)));

absReal x = absReal2 x;

abs :: MyInt  ->  MyInt
abs = absReal;

stop :: MyBool  ->  a;
stop MyFalse = stop MyFalse;

error :: a;
error = stop MyTrue;

primGEqNatS :: Nat  ->  Nat  ->  MyBool;
primGEqNatS (Succ x) Zero = MyTrue;
primGEqNatS (Succ x) (Succ y) = primGEqNatS x y;
primGEqNatS Zero (Succ x) = MyFalse;
primGEqNatS Zero Zero = MyTrue;

primMinusNatS :: Nat  ->  Nat  ->  Nat;
primMinusNatS (Succ x) (Succ y) = primMinusNatS x y;
primMinusNatS Zero (Succ y) = Zero;
primMinusNatS x Zero = x;

primModNatS0 x y MyTrue = primModNatS (primMinusNatS x (Succ y)) (Succ (Succ y));
primModNatS0 x y MyFalse = Succ x;

primModNatS :: Nat  ->  Nat  ->  Nat;
primModNatS Zero Zero = error;
primModNatS Zero (Succ x) = Zero;
primModNatS (Succ x) Zero = error;
primModNatS (Succ x) (Succ Zero) = Zero;
primModNatS (Succ x) (Succ (Succ y)) = primModNatS0 x y (primGEqNatS x (Succ y));

primRemInt :: MyInt  ->  MyInt  ->  MyInt;
primRemInt (Pos x) (Pos (Succ y)) = Pos (primModNatS x (Succ y));
primRemInt (Pos x) (Neg (Succ y)) = Pos (primModNatS x (Succ y));
primRemInt (Neg x) (Pos (Succ y)) = Neg (primModNatS x (Succ y));
primRemInt (Neg x) (Neg (Succ y)) = Neg (primModNatS x (Succ y));
primRemInt wx wy = error;

rem :: MyInt  ->  MyInt  ->  MyInt
rem = primRemInt;

gcd0Gcd'0 x y = gcd0Gcd' y (rem x y);

primEqNat :: Nat  ->  Nat  ->  MyBool;
primEqNat Zero Zero = MyTrue;
primEqNat Zero (Succ y) = MyFalse;
primEqNat (Succ x) Zero = MyFalse;
primEqNat (Succ x) (Succ y) = primEqNat x y;

primEqInt :: MyInt  ->  MyInt  ->  MyBool;
primEqInt (Pos (Succ x)) (Pos (Succ y)) = primEqNat x y;
primEqInt (Neg (Succ x)) (Neg (Succ y)) = primEqNat x y;
primEqInt (Pos Zero) (Neg Zero) = MyTrue;
primEqInt (Neg Zero) (Pos Zero) = MyTrue;
primEqInt (Neg Zero) (Neg Zero) = MyTrue;
primEqInt (Pos Zero) (Pos Zero) = MyTrue;
primEqInt wz xu = MyFalse;

esEs :: MyInt  ->  MyInt  ->  MyBool
esEs = primEqInt;

gcd0Gcd'1 MyTrue x xv = x;
gcd0Gcd'1 xw xx xy = gcd0Gcd'0 xx xy;

gcd0Gcd'2 x xv = gcd0Gcd'1 (esEs xv (fromInt (Pos Zero))) x xv;
gcd0Gcd'2 xz yu = gcd0Gcd'0 xz yu;

gcd0Gcd' x xv = gcd0Gcd'2 x xv;
gcd0Gcd' x y = gcd0Gcd'0 x y;

gcd0 x y = gcd0Gcd' (abs x) (abs y);

gcd1 MyTrue yv yw = error;
gcd1 yx yy yz = gcd0 yy yz;

gcd2 MyTrue yv yw = gcd1 (esEs yw (fromInt (Pos Zero))) yv yw;
gcd2 zu zv zw = gcd0 zv zw;

gcd3 yv yw = gcd2 (esEs yv (fromInt (Pos Zero))) yv yw;
gcd3 zx zy = gcd0 zx zy;

gcd yv yw = gcd3 yv yw;
gcd x y = gcd0 x y;

