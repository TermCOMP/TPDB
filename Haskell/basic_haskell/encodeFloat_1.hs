{-# htermination (encodeFloatFloat :: Integer  ->  MyInt  ->  Float) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Double = Double MyInt MyInt ;

data Float = Float MyInt MyInt ;

data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

primIntToFloat :: MyInt  ->  Float;
primIntToFloat x = Float x (Pos (Succ Zero));

primIntegerToFloat :: Integer  ->  Float;
primIntegerToFloat (Integer x) = primIntToFloat x;

fromIntegerFloat :: Integer  ->  Float
fromIntegerFloat = primIntegerToFloat;

doubleToFloat :: Double  ->  Float;
doubleToFloat (Double x y) = Float x y;

fromDoubleFloat :: Double  ->  Float
fromDoubleFloat = doubleToFloat;

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

primDivFloat :: Float  ->  Float  ->  Float;
primDivFloat (Float x1 x2) (Float y1 y2) = Float (srMyInt x1 y2) (srMyInt x2 y1);

fsFloat :: Float  ->  Float  ->  Float
fsFloat = primDivFloat;

primNegInt :: MyInt  ->  MyInt;
primNegInt (Pos x) = Neg x;
primNegInt (Neg x) = Pos x;

negateMyInt :: MyInt  ->  MyInt
negateMyInt = primNegInt;

primFloatEncodePower0 x y = fsFloat (fromDoubleFloat (Double (Pos (Succ Zero)) (Pos (Succ Zero)))) (primFloatEncodePower x (negateMyInt y));

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

fromIntFloat :: MyInt  ->  Float
fromIntFloat = primIntToFloat;

primMinusNat :: Nat  ->  Nat  ->  MyInt;
primMinusNat Zero Zero = Pos Zero;
primMinusNat Zero (Succ y) = Neg (Succ y);
primMinusNat (Succ x) Zero = Pos (Succ x);
primMinusNat (Succ x) (Succ y) = primMinusNat x y;

primMinusInt :: MyInt  ->  MyInt  ->  MyInt;
primMinusInt (Pos x) (Neg y) = Pos (primPlusNat x y);
primMinusInt (Neg x) (Pos y) = Neg (primPlusNat x y);
primMinusInt (Neg x) (Neg y) = primMinusNat y x;
primMinusInt (Pos x) (Pos y) = primMinusNat x y;

msMyInt :: MyInt  ->  MyInt  ->  MyInt
msMyInt = primMinusInt;

primMulFloat :: Float  ->  Float  ->  Float;
primMulFloat (Float x1 x2) (Float y1 y2) = Float (srMyInt x1 y1) (srMyInt x2 y2);

srFloat :: Float  ->  Float  ->  Float
srFloat = primMulFloat;

primFloatEncodePower1 MyTrue x vw = srFloat (fromIntFloat x) (primFloatEncodePower x (msMyInt vw (Pos (Succ Zero))));
primFloatEncodePower1 vz wu wv = primFloatEncodePower0 wu wv;

primFloatEncodePower2 x vw = primFloatEncodePower1 (gtEsMyInt vw (Pos (Succ Zero))) x vw;
primFloatEncodePower2 ww wx = primFloatEncodePower0 ww wx;

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
primEqInt vx vy = MyFalse;

esEsMyInt :: MyInt  ->  MyInt  ->  MyBool
esEsMyInt = primEqInt;

primFloatEncodePower3 MyTrue vv wy = fromDoubleFloat (Double (Pos (Succ Zero)) (Pos (Succ Zero)));
primFloatEncodePower3 wz xu xv = primFloatEncodePower2 xu xv;

primFloatEncodePower4 vv wy = primFloatEncodePower3 (esEsMyInt wy (Pos Zero)) vv wy;
primFloatEncodePower4 xw xx = primFloatEncodePower2 xw xx;

primFloatEncodePower :: MyInt  ->  MyInt  ->  Float;
primFloatEncodePower vv wy = primFloatEncodePower4 vv wy;
primFloatEncodePower x vw = primFloatEncodePower2 x vw;
primFloatEncodePower x y = primFloatEncodePower0 x y;

primFloatEncode :: Integer  ->  MyInt  ->  Float;
primFloatEncode x y = srFloat (fromIntegerFloat x) (primFloatEncodePower (Pos (Succ (Succ Zero))) y);

encodeFloatFloat :: Integer  ->  MyInt  ->  Float
encodeFloatFloat = primFloatEncode;

