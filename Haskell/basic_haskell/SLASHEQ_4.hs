{-# htermination (fsEsChar :: Char  ->  Char  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Char = Char MyInt ;

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

not :: MyBool  ->  MyBool;
not MyTrue = MyFalse;
not MyFalse = MyTrue;

fsEsChar :: Char  ->  Char  ->  MyBool
fsEsChar x y = not (esEsChar x y);

