{-# htermination (lookup :: Float  ->  (List (Tup2 Float a))  ->  Maybe a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data Float = Float MyInt MyInt ;

data Maybe a = Nothing  | Just a ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

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
primEqInt vv vw = MyFalse;

esEsMyInt :: MyInt  ->  MyInt  ->  MyBool
esEsMyInt = primEqInt;

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

primEqFloat :: Float  ->  Float  ->  MyBool;
primEqFloat (Float x1 x2) (Float y1 y2) = esEsMyInt (srMyInt x1 y1) (srMyInt x2 y2);

esEsFloat :: Float  ->  Float  ->  MyBool
esEsFloat = primEqFloat;

lookup0 k x y xys MyTrue = lookup k xys;

otherwise :: MyBool;
otherwise = MyTrue;

lookup1 k x y xys MyTrue = Just y;
lookup1 k x y xys MyFalse = lookup0 k x y xys otherwise;

lookup2 k (Cons (Tup2 x y) xys) = lookup1 k x y xys (esEsFloat k x);

lookup3 k Nil = Nothing;
lookup3 wu wv = lookup2 wu wv;

lookup k Nil = lookup3 k Nil;
lookup k (Cons (Tup2 x y) xys) = lookup2 k (Cons (Tup2 x y) xys);

