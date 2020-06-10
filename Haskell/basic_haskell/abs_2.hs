{-# htermination (absFloat :: Float  ->  Float) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Float = Float MyInt MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

primNegInt :: MyInt  ->  MyInt;
primNegInt (Pos x) = Neg x;
primNegInt (Neg x) = Pos x;

negateMyInt :: MyInt  ->  MyInt
negateMyInt = primNegInt;

primNegFloat :: Float  ->  Float;
primNegFloat (Float x1 x2) = Float (negateMyInt x1) x2;

negateFloat :: Float  ->  Float
negateFloat = primNegFloat;

absReal0 x MyTrue = negateFloat x;

otherwise :: MyBool;
otherwise = MyTrue;

absReal1 x MyTrue = x;
absReal1 x MyFalse = absReal0 x otherwise;

primIntToFloat :: MyInt  ->  Float;
primIntToFloat x = Float x (Pos (Succ Zero));

fromIntFloat :: MyInt  ->  Float
fromIntFloat = primIntToFloat;

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

primCmpFloat :: Float  ->  Float  ->  Ordering;
primCmpFloat (Float x1 x2) (Float y1 y2) = compareMyInt (srMyInt x1 y1) (srMyInt x2 y2);

compareFloat :: Float  ->  Float  ->  Ordering
compareFloat = primCmpFloat;

fsEsOrdering :: Ordering -> Ordering -> MyBool
fsEsOrdering LT LT = MyFalse;
fsEsOrdering EQ EQ = MyFalse;
fsEsOrdering GT GT = MyFalse;
fsEsOrdering _ _ = MyTrue;

gtEsFloat :: Float  ->  Float  ->  MyBool
gtEsFloat x y = fsEsOrdering (compareFloat x y) LT;

absReal2 x = absReal1 x (gtEsFloat x (fromIntFloat (Pos Zero)));

absReal x = absReal2 x;

absFloat :: Float  ->  Float
absFloat = absReal;

