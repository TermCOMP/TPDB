{-# htermination (fsEsRatio :: Ratio MyInt  ->  Ratio MyInt  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ratio a = CnPc a a;

asAs :: MyBool  ->  MyBool  ->  MyBool;
asAs MyFalse x = MyFalse;
asAs MyTrue x = x;

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

esEsRatio :: Ratio MyInt  ->  Ratio MyInt  ->  MyBool
esEsRatio (CnPc x0 x1) (CnPc y0 y1) = asAs (esEsMyInt x0 y0) (esEsMyInt x1 y1);

not :: MyBool  ->  MyBool;
not MyTrue = MyFalse;
not MyFalse = MyTrue;

fsEsRatio :: Ratio MyInt  ->  Ratio MyInt  ->  MyBool
fsEsRatio x y = not (esEsRatio x y);

