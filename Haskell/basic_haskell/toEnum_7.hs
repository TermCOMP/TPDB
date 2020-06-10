{-# htermination (toEnumOrdering :: MyInt  ->  Ordering) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

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

toEnum0 MyTrue vx = GT;

toEnum1 vx = toEnum0 (esEsMyInt vx (Pos (Succ (Succ Zero)))) vx;

toEnum2 MyTrue vy = EQ;
toEnum2 vz wu = toEnum1 wu;

toEnum3 vy = toEnum2 (esEsMyInt vy (Pos (Succ Zero))) vy;
toEnum3 wv = toEnum1 wv;

toEnum4 MyTrue ww = LT;
toEnum4 wx wy = toEnum3 wy;

toEnum5 ww = toEnum4 (esEsMyInt ww (Pos Zero)) ww;
toEnum5 wz = toEnum3 wz;

toEnumOrdering :: MyInt  ->  Ordering
toEnumOrdering ww = toEnum5 ww;
toEnumOrdering vy = toEnum3 vy;
toEnumOrdering vx = toEnum1 vx;

