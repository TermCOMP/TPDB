{-# htermination (fromDoubleRatio :: Double  ->  Ratio MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil

data Double = Double MyInt MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

data Ratio a = CnPc a a;

fromIntMyInt :: MyInt  ->  MyInt
fromIntMyInt x = x;

primNegInt :: MyInt  ->  MyInt;
primNegInt (Pos x) = Neg x;
primNegInt (Neg x) = Pos x;

negateMyInt :: MyInt  ->  MyInt
negateMyInt = primNegInt;

absReal0 x MyTrue = negateMyInt x;

otherwise :: MyBool;
otherwise = MyTrue;

absReal1 x MyTrue = x;
absReal1 x MyFalse = absReal0 x otherwise;

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

compareMyInt :: MyInt  ->  MyInt  ->  Ordering
compareMyInt = primCmpInt;

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

fsEsOrdering :: Ordering  ->  Ordering  ->  MyBool
fsEsOrdering x y = not (esEsOrdering x y);

gtEsMyInt :: MyInt  ->  MyInt  ->  MyBool
gtEsMyInt x y = fsEsOrdering (compareMyInt x y) LT;

absReal2 x = absReal1 x (gtEsMyInt x (fromIntMyInt (Pos Zero)));

absReal x = absReal2 x;

absMyInt :: MyInt  ->  MyInt
absMyInt = absReal;

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
primEqInt xv xw = MyFalse;

esEsMyInt :: MyInt  ->  MyInt  ->  MyBool
esEsMyInt = primEqInt;

stop :: MyBool  ->  a;
stop MyFalse = stop MyFalse;

error :: a;
error = stop MyTrue;

primMinusNatS :: Nat  ->  Nat  ->  Nat;
primMinusNatS (Succ x) (Succ y) = primMinusNatS x y;
primMinusNatS Zero (Succ y) = Zero;
primMinusNatS x Zero = x;

primDivNatS0 x y MyTrue = Succ (primDivNatS (primMinusNatS x y) (Succ y));
primDivNatS0 x y MyFalse = Zero;

primGEqNatS :: Nat  ->  Nat  ->  MyBool;
primGEqNatS (Succ x) Zero = MyTrue;
primGEqNatS (Succ x) (Succ y) = primGEqNatS x y;
primGEqNatS Zero (Succ x) = MyFalse;
primGEqNatS Zero Zero = MyTrue;

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

quotMyInt :: MyInt  ->  MyInt  ->  MyInt
quotMyInt = primQuotInt;

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

remMyInt :: MyInt  ->  MyInt  ->  MyInt
remMyInt = primRemInt;

gcd0Gcd'0 x y = gcd0Gcd' y (remMyInt x y);

gcd0Gcd'1 MyTrue x xx = x;
gcd0Gcd'1 xy xz yu = gcd0Gcd'0 xz yu;

gcd0Gcd'2 x xx = gcd0Gcd'1 (esEsMyInt xx (fromIntMyInt (Pos Zero))) x xx;
gcd0Gcd'2 yv yw = gcd0Gcd'0 yv yw;

gcd0Gcd' x xx = gcd0Gcd'2 x xx;
gcd0Gcd' x y = gcd0Gcd'0 x y;

gcd0 x y = gcd0Gcd' (absMyInt x) (absMyInt y);

gcd1 MyTrue yx yy = error;
gcd1 yz zu zv = gcd0 zu zv;

gcd2 MyTrue yx yy = gcd1 (esEsMyInt yy (fromIntMyInt (Pos Zero))) yx yy;
gcd2 zw zx zy = gcd0 zx zy;

gcd3 yx yy = gcd2 (esEsMyInt yx (fromIntMyInt (Pos Zero))) yx yy;
gcd3 zz vuu = gcd0 zz vuu;

gcd yx yy = gcd3 yx yy;
gcd x y = gcd0 x y;

reduce2D vuv vuw = gcd vuv vuw;

reduce2Reduce0 vuv vuw x y MyTrue = CnPc (quotMyInt x (reduce2D vuv vuw)) (quotMyInt y (reduce2D vuv vuw));

reduce2Reduce1 vuv vuw x y MyTrue = error;
reduce2Reduce1 vuv vuw x y MyFalse = reduce2Reduce0 vuv vuw x y otherwise;

reduce2 x y = reduce2Reduce1 x y x y (esEsMyInt y (fromIntMyInt (Pos Zero)));

reduce x y = reduce2 x y;

gtMyInt :: MyInt  ->  MyInt  ->  MyBool
gtMyInt x y = esEsOrdering (compareMyInt x y) GT;

signumReal0 x MyTrue = fromIntMyInt (Neg (Succ Zero));

signumReal1 x MyTrue = fromIntMyInt (Pos (Succ Zero));
signumReal1 x MyFalse = signumReal0 x otherwise;

signumReal2 x MyTrue = fromIntMyInt (Pos Zero);
signumReal2 x MyFalse = signumReal1 x (gtMyInt x (fromIntMyInt (Pos Zero)));

signumReal3 x = signumReal2 x (esEsMyInt x (fromIntMyInt (Pos Zero)));

signumReal x = signumReal3 x;

signumMyInt :: MyInt  ->  MyInt
signumMyInt = signumReal;

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

srMyInt :: MyInt  ->  MyInt  ->  MyInt
srMyInt = primMulInt;

pc x y = reduce (srMyInt x (signumMyInt y)) (absMyInt y);

doubleToRatio (Double x y) = pc (fromIntMyInt x) (fromIntMyInt y);

fromDoubleRatio :: Double  ->  Ratio MyInt
fromDoubleRatio = doubleToRatio;

