{-# htermination (lookup :: Char  ->  (List (Tup2 Char a))  ->  Maybe a) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data Char = Char MyInt ;

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

primEqChar :: Char  ->  Char  ->  MyBool;
primEqChar (Char x) (Char y) = primEqInt x y;

esEsChar :: Char  ->  Char  ->  MyBool
esEsChar = primEqChar;

lookup0 k x y xys MyTrue = lookup k xys;

otherwise :: MyBool;
otherwise = MyTrue;

lookup1 k x y xys MyTrue = Just y;
lookup1 k x y xys MyFalse = lookup0 k x y xys otherwise;

lookup2 k (Cons (Tup2 x y) xys) = lookup1 k x y xys (esEsChar k x);

lookup3 k Nil = Nothing;
lookup3 wu wv = lookup2 wu wv;

lookup k Nil = lookup3 k Nil;
lookup k (Cons (Tup2 x y) xys) = lookup2 k (Cons (Tup2 x y) xys);

