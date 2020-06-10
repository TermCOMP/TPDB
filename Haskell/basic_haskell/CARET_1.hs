{-# htermination (pr :: Ratio MyInt  ->  MyInt  ->  Ratio MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

data Ratio a = CnPc a a;

stop :: MyBool  ->  a;
stop MyFalse = stop MyFalse;

error :: a;
error = stop MyTrue;

pr0 wy wz = error;

fromIntMyInt :: MyInt  ->  MyInt
fromIntMyInt x = x;

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

gtMyInt :: MyInt  ->  MyInt  ->  MyBool
gtMyInt x y = esEsOrdering (compareMyInt x y) GT;

primMinusNat :: Nat  ->  Nat  ->  MyInt;
primMinusNat Zero Zero = Pos Zero;
primMinusNat Zero (Succ y) = Neg (Succ y);
primMinusNat (Succ x) Zero = Pos (Succ x);
primMinusNat (Succ x) (Succ y) = primMinusNat x y;

primPlusNat :: Nat  ->  Nat  ->  Nat;
primPlusNat Zero Zero = Zero;
primPlusNat Zero (Succ y) = Succ y;
primPlusNat (Succ x) Zero = Succ x;
primPlusNat (Succ x) (Succ y) = Succ (Succ (primPlusNat x y));

primMinusInt :: MyInt  ->  MyInt  ->  MyInt;
primMinusInt (Pos x) (Neg y) = Pos (primPlusNat x y);
primMinusInt (Neg x) (Pos y) = Neg (primPlusNat x y);
primMinusInt (Neg x) (Neg y) = primMinusNat y x;
primMinusInt (Pos x) (Pos y) = primMinusNat x y;

msMyInt :: MyInt  ->  MyInt  ->  MyInt
msMyInt = primMinusInt;

primEvenNat :: Nat  ->  MyBool;
primEvenNat Zero = MyTrue;
primEvenNat (Succ Zero) = MyFalse;
primEvenNat (Succ (Succ x)) = primEvenNat x;

primEvenInt :: MyInt  ->  MyBool;
primEvenInt (Pos x) = primEvenNat x;
primEvenInt (Neg x) = primEvenNat x;

evenMyInt :: MyInt  ->  MyBool
evenMyInt = primEvenInt;

otherwise :: MyBool;
otherwise = MyTrue;

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
primEqInt xy xz = MyFalse;

esEsMyInt :: MyInt  ->  MyInt  ->  MyBool
esEsMyInt = primEqInt;

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
primQuotInt xw xx = error;

quotMyInt :: MyInt  ->  MyInt  ->  MyInt
quotMyInt = primQuotInt;

primNegInt :: MyInt  ->  MyInt;
primNegInt (Pos x) = Neg x;
primNegInt (Neg x) = Pos x;

negateMyInt :: MyInt  ->  MyInt
negateMyInt = primNegInt;

absReal0 x MyTrue = negateMyInt x;

absReal1 x MyTrue = x;
absReal1 x MyFalse = absReal0 x otherwise;

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
primRemInt xu xv = error;

remMyInt :: MyInt  ->  MyInt  ->  MyInt
remMyInt = primRemInt;

gcd0Gcd'0 x y = gcd0Gcd' y (remMyInt x y);

gcd0Gcd'1 MyTrue x yu = x;
gcd0Gcd'1 yv yw yx = gcd0Gcd'0 yw yx;

gcd0Gcd'2 x yu = gcd0Gcd'1 (esEsMyInt yu (fromIntMyInt (Pos Zero))) x yu;
gcd0Gcd'2 yy yz = gcd0Gcd'0 yy yz;

gcd0Gcd' x yu = gcd0Gcd'2 x yu;
gcd0Gcd' x y = gcd0Gcd'0 x y;

gcd0 x y = gcd0Gcd' (absMyInt x) (absMyInt y);

gcd1 MyTrue zu zv = error;
gcd1 zw zx zy = gcd0 zx zy;

gcd2 MyTrue zu zv = gcd1 (esEsMyInt zv (fromIntMyInt (Pos Zero))) zu zv;
gcd2 zz vuu vuv = gcd0 vuu vuv;

gcd3 zu zv = gcd2 (esEsMyInt zu (fromIntMyInt (Pos Zero))) zu zv;
gcd3 vuw vux = gcd0 vuw vux;

gcd zu zv = gcd3 zu zv;
gcd x y = gcd0 x y;

reduce2D vxw vxx = gcd vxw vxx;

reduce2Reduce0 vxw vxx x y MyTrue = CnPc (quotMyInt x (reduce2D vxw vxx)) (quotMyInt y (reduce2D vxw vxx));

reduce2Reduce1 vxw vxx x y MyTrue = error;
reduce2Reduce1 vxw vxx x y MyFalse = reduce2Reduce0 vxw vxx x y otherwise;

reduce2 x y = reduce2Reduce1 x y x y (esEsMyInt y (fromIntMyInt (Pos Zero)));

reduce x y = reduce2 x y;

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

srRatio :: Ratio MyInt  ->  Ratio MyInt  ->  Ratio MyInt
srRatio (CnPc x y) (CnPc x' y') = reduce (srMyInt x x') (srMyInt y y');

pr2F0G0 vxy x n MyTrue = pr2F x (msMyInt n (fromIntMyInt (Pos (Succ Zero)))) (srRatio x vxy);

pr2F0G1 vxy x n MyTrue = pr2F0G vxy (srRatio x x) (quotMyInt n (fromIntMyInt (Pos (Succ (Succ Zero)))));
pr2F0G1 vxy x n MyFalse = pr2F0G0 vxy x n otherwise;

pr2F0G2 vxy x n = pr2F0G1 vxy x n (evenMyInt n);

pr2F0G vxy x n = pr2F0G2 vxy x n;

pr2F0 x n y = pr2F0G y x n;

pr2F3 MyTrue wx vuy y = y;
pr2F3 vuz vvu vvv vvw = pr2F0 vvu vvv vvw;

pr2F4 wx vuy y = pr2F3 (esEsMyInt vuy (fromIntMyInt (Pos Zero))) wx vuy y;
pr2F4 vvx vvy vvz = pr2F0 vvx vvy vvz;

pr2F wx vuy y = pr2F4 wx vuy y;
pr2F x n y = pr2F0 x n y;

pr2Pr1 x n MyTrue = pr2F x (msMyInt n (fromIntMyInt (Pos (Succ Zero)))) x;
pr2Pr1 x n MyFalse = pr0 x n;

pr2 x n = pr2Pr1 x n (gtMyInt n (fromIntMyInt (Pos Zero)));
pr2 vwu vwv = pr0 vwu vwv;

intToRatio x = CnPc (fromIntMyInt x) (fromIntMyInt (Pos (Succ Zero)));

fromIntRatio :: MyInt  ->  Ratio MyInt
fromIntRatio = intToRatio;

pr3 MyTrue x vww = fromIntRatio (Pos (Succ Zero));
pr3 vwx vwy vwz = pr2 vwy vwz;

pr4 x vww = pr3 (esEsMyInt vww (fromIntMyInt (Pos Zero))) x vww;
pr4 vxu vxv = pr2 vxu vxv;

pr x vww = pr4 x vww;
pr x n = pr2 x n;
pr wy wz = pr0 wy wz;

