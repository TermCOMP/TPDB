{-# htermination (toEnumMyBool :: MyInt  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
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

toEnum0 MyTrue vx = MyTrue;

toEnum1 vx = toEnum0 (esEsMyInt vx (Pos (Succ Zero))) vx;

toEnum2 MyTrue vy = MyFalse;
toEnum2 vz wu = toEnum1 wu;

toEnum3 vy = toEnum2 (esEsMyInt vy (Pos Zero)) vy;
toEnum3 wv = toEnum1 wv;

toEnumMyBool :: MyInt  ->  MyBool
toEnumMyBool vy = toEnum3 vy;
toEnumMyBool vx = toEnum1 vx;

