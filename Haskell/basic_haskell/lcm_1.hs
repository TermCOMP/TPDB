{-# htermination (lcm :: MyInt  ->  MyInt  ->  MyInt) #-} 
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
primEqInt xx xy = MyFalse;

esEs :: MyInt  ->  MyInt  ->  MyBool
esEs = primEqInt;

gcd0Gcd'1 MyTrue x xz = x;
gcd0Gcd'1 yu yv yw = gcd0Gcd'0 yv yw;

gcd0Gcd'2 x xz = gcd0Gcd'1 (esEs xz (fromInt (Pos Zero))) x xz;
gcd0Gcd'2 yx yy = gcd0Gcd'0 yx yy;

gcd0Gcd' x xz = gcd0Gcd'2 x xz;
gcd0Gcd' x y = gcd0Gcd'0 x y;

gcd0 x y = gcd0Gcd' (abs x) (abs y);

gcd1 MyTrue yz zu = error;
gcd1 zv zw zx = gcd0 zw zx;

gcd2 MyTrue yz zu = gcd1 (esEs zu (fromInt (Pos Zero))) yz zu;
gcd2 zy zz vuu = gcd0 zz vuu;

gcd3 yz zu = gcd2 (esEs yz (fromInt (Pos Zero))) yz zu;
gcd3 vuv vuw = gcd0 vuv vuw;

gcd yz zu = gcd3 yz zu;
gcd x y = gcd0 x y;

primDivNatS0 x y MyTrue = Succ (primDivNatS (primMinusNatS x y) (Succ y));
primDivNatS0 x y MyFalse = Zero;

primDivNatS :: Nat  ->  Nat  ->  Nat;
primDivNatS Zero Zero = error;
primDivNatS (Succ x) Zero = error;
primDivNatS (Succ x) (Succ y) = primDivNatS0 x y (primGEqNatS x y);
primDivNatS Zero (Succ x) = Zero;

primQuotInt :: MyInt  ->  MyInt  ->  MyInt;
primQuotInt (Pos x) (Pos (Succ y)) = Pos (primDivNatS x (Succ y));
primQuotInt (Pos x) (Neg (Succ y)) = Neg (primDivNatS x (Succ y));
primQuotInt (Neg x) (Pos (Succ y)) = Neg (primDivNatS x (Succ y));
primQuotInt (Neg x) (Neg (Succ y)) = Pos (primDivNatS x (Succ y));
primQuotInt wz xu = error;

quot :: MyInt  ->  MyInt  ->  MyInt
quot = primQuotInt;

primPlusNat :: Nat  ->  Nat  ->  Nat;
primPlusNat Zero Zero = Zero;
primPlusNat Zero (Succ y) = Succ y;
primPlusNat (Succ x) Zero = Succ x;
primPlusNat (Succ x) (Succ y) = Succ (Succ (primPlusNat x y));

primMulNat :: Nat  ->  Nat  ->  Nat;
primMulNat Zero Zero = Zero;
primMulNat Zero (Succ y) = Zero;
primMulNat (Succ x) Zero = Zero;
primMulNat (Succ x) (Succ y) = primPlusNat (primMulNat x (Succ y)) (Succ y);

primMulInt :: MyInt  ->  MyInt  ->  MyInt;
primMulInt (Pos x) (Pos y) = Pos (primMulNat x y);
primMulInt (Pos x) (Neg y) = Neg (primMulNat x y);
primMulInt (Neg x) (Pos y) = Neg (primMulNat x y);
primMulInt (Neg x) (Neg y) = Pos (primMulNat x y);

sr :: MyInt  ->  MyInt  ->  MyInt
sr = primMulInt;

lcm0 x y = abs (sr (quot x (gcd x y)) y);

lcm1 MyTrue vux xw = fromInt (Pos Zero);
lcm1 vuy vuz vvu = lcm0 vuz vvu;

lcm2 vux xw = lcm1 (esEs vux (fromInt (Pos Zero))) vux xw;
lcm2 vvv vvw = lcm0 vvv vvw;

lcm3 MyTrue xv vvx = fromInt (Pos Zero);
lcm3 vvy vvz vwu = lcm2 vvz vwu;

lcm4 xv vvx = lcm3 (esEs vvx (fromInt (Pos Zero))) xv vvx;
lcm4 vwv vww = lcm2 vwv vww;

lcm xv vvx = lcm4 xv vvx;
lcm vux xw = lcm2 vux xw;
lcm x y = lcm0 x y;

