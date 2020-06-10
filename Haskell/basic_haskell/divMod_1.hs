{-# htermination (divModMyInt :: MyInt  ->  MyInt  ->  Tup2 MyInt MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

divModQ1 wx wy (Tup2 q vv) = q;

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
primQuotInt vz wu = error;

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
primRemInt vx vy = error;

primQrmInt :: MyInt  ->  MyInt  ->  Tup2 MyInt MyInt;
primQrmInt x y = Tup2 (primQuotInt x y) (primRemInt x y);

quotRemMyInt :: MyInt  ->  MyInt  ->  Tup2 MyInt MyInt
quotRemMyInt = primQrmInt;

divModVu5 wx wy = quotRemMyInt wx wy;

divModQ wx wy = divModQ1 wx wy (divModVu5 wx wy);

divModQr0 wx wy qr = qr;

divModQr wx wy = divModQr0 wx wy (divModVu5 wx wy);

divModR0 wx wy (Tup2 vw r) = r;

divModR wx wy = divModR0 wx wy (divModVu5 wx wy);

fromIntMyInt :: MyInt  ->  MyInt
fromIntMyInt x = x;

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

primPlusInt :: MyInt  ->  MyInt  ->  MyInt;
primPlusInt (Pos x) (Neg y) = primMinusNat x y;
primPlusInt (Neg x) (Pos y) = primMinusNat y x;
primPlusInt (Neg x) (Neg y) = Neg (primPlusNat x y);
primPlusInt (Pos x) (Pos y) = Pos (primPlusNat x y);

psMyInt :: MyInt  ->  MyInt  ->  MyInt
psMyInt = primPlusInt;

divModDivMod0 wx wy d MyTrue = Tup2 (msMyInt (divModQ wx wy) (fromIntMyInt (Pos (Succ Zero)))) (psMyInt (divModR wx wy) d);
divModDivMod0 wx wy d MyFalse = divModQr wx wy;

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
primEqInt wv ww = MyFalse;

esEsMyInt :: MyInt  ->  MyInt  ->  MyBool
esEsMyInt = primEqInt;

primNegInt :: MyInt  ->  MyInt;
primNegInt (Pos x) = Neg x;
primNegInt (Neg x) = Pos x;

negateMyInt :: MyInt  ->  MyInt
negateMyInt = primNegInt;

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

otherwise :: MyBool;
otherwise = MyTrue;

signumReal0 x MyTrue = fromIntMyInt (Neg (Succ Zero));

signumReal1 x MyTrue = fromIntMyInt (Pos (Succ Zero));
signumReal1 x MyFalse = signumReal0 x otherwise;

signumReal2 x MyTrue = fromIntMyInt (Pos Zero);
signumReal2 x MyFalse = signumReal1 x (gtMyInt x (fromIntMyInt (Pos Zero)));

signumReal3 x = signumReal2 x (esEsMyInt x (fromIntMyInt (Pos Zero)));

signumReal x = signumReal3 x;

signumMyInt :: MyInt  ->  MyInt
signumMyInt = signumReal;

divModMyInt :: MyInt  ->  MyInt  ->  Tup2 MyInt MyInt
divModMyInt n d = divModDivMod0 n d d (esEsMyInt (signumMyInt (divModR n d)) (negateMyInt (signumMyInt d)));

