{-# htermination (length :: (List a)  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data WHNF a = WHNF a ;

enforceWHNF :: WHNF a  ->  b  ->  b;
enforceWHNF (WHNF x) y = y;

seq :: b  ->  a  ->  a;
seq x y = enforceWHNF (WHNF x) y;

dsEm :: (a  ->  b)  ->  a  ->  b;
dsEm f x = seq x (f x);

foldl' :: (b  ->  a  ->  b)  ->  b  ->  (List a)  ->  b;
foldl' f a Nil = a;
foldl' f a (Cons x xs) = dsEm (foldl' f) (f a x) xs;

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

length0 n vv = psMyInt n (Pos (Succ Zero));

length :: (List a)  ->  MyInt;
length = foldl' length0 (Pos Zero);

