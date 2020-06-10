{-# htermination (productFloat :: (List Float)  ->  Float) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Float = Float MyInt MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data WHNF a = WHNF a ;

enforceWHNF :: WHNF b  ->  a  ->  a;
enforceWHNF (WHNF x) y = y;

seq :: b  ->  a  ->  a;
seq x y = enforceWHNF (WHNF x) y;

dsEm :: (b  ->  a)  ->  b  ->  a;
dsEm f x = seq x (f x);

foldl' :: (b  ->  a  ->  b)  ->  b  ->  (List a)  ->  b;
foldl' f a Nil = a;
foldl' f a (Cons x xs) = dsEm (foldl' f) (f a x) xs;

primIntToFloat :: MyInt  ->  Float;
primIntToFloat x = Float x (Pos (Succ Zero));

fromIntFloat :: MyInt  ->  Float
fromIntFloat = primIntToFloat;

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

primMulFloat :: Float  ->  Float  ->  Float;
primMulFloat (Float x1 x2) (Float y1 y2) = Float (srMyInt x1 y1) (srMyInt x2 y2);

srFloat :: Float  ->  Float  ->  Float
srFloat = primMulFloat;

productFloat :: (List Float)  ->  Float
productFloat = foldl' srFloat (fromIntFloat (Pos (Succ Zero)));

