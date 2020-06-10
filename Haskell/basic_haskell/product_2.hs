{-# htermination (productMyInt :: (List MyInt)  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data WHNF a = WHNF a ;

enforceWHNF :: WHNF b  ->  a  ->  a;
enforceWHNF (WHNF x) y = y;

seq :: b  ->  a  ->  a;
seq x y = enforceWHNF (WHNF x) y;

dsEm :: (a  ->  b)  ->  a  ->  b;
dsEm f x = seq x (f x);

foldl' :: (a  ->  b  ->  a)  ->  a  ->  (List b)  ->  a;
foldl' f a Nil = a;
foldl' f a (Cons x xs) = dsEm (foldl' f) (f a x) xs;

fromIntMyInt :: MyInt  ->  MyInt
fromIntMyInt x = x;

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

productMyInt :: (List MyInt)  ->  MyInt
productMyInt = foldl' srMyInt (fromIntMyInt (Pos (Succ Zero)));

