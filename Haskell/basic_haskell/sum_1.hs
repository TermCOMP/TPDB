{-# htermination (sumFloat :: (List Float)  ->  Float) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Float = Float MyInt MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data WHNF a = WHNF a ;

enforceWHNF :: WHNF a  ->  b  ->  b;
enforceWHNF (WHNF x) y = y;

seq :: a  ->  b  ->  b;
seq x y = enforceWHNF (WHNF x) y;

dsEm :: (a  ->  b)  ->  a  ->  b;
dsEm f x = seq x (f x);

foldl' :: (a  ->  b  ->  a)  ->  a  ->  (List b)  ->  a;
foldl' f a Nil = a;
foldl' f a (Cons x xs) = dsEm (foldl' f) (f a x) xs;

primIntToFloat :: MyInt  ->  Float;
primIntToFloat x = Float x (Pos (Succ Zero));

fromIntFloat :: MyInt  ->  Float
fromIntFloat = primIntToFloat;

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

primPlusInt :: MyInt  ->  MyInt  ->  MyInt;
primPlusInt (Pos x) (Neg y) = primMinusNat x y;
primPlusInt (Neg x) (Pos y) = primMinusNat y x;
primPlusInt (Neg x) (Neg y) = Neg (primPlusNat x y);
primPlusInt (Pos x) (Pos y) = Pos (primPlusNat x y);

psMyInt :: MyInt  ->  MyInt  ->  MyInt
psMyInt = primPlusInt;

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

primPlusFloat :: Float  ->  Float  ->  Float;
primPlusFloat (Float x1 x2) (Float y1 y2) = Float (psMyInt x1 y1) (srMyInt x2 y2);

psFloat :: Float  ->  Float  ->  Float
psFloat = primPlusFloat;

sumFloat :: (List Float)  ->  Float
sumFloat = foldl' psFloat (fromIntFloat (Pos Zero));

