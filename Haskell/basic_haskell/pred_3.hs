{-# htermination (predMyBool :: MyBool  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

fromEnumMyBool :: MyBool  ->  MyInt
fromEnumMyBool MyFalse = Pos Zero;
fromEnumMyBool MyTrue = Pos (Succ Zero);

pt :: (c  ->  b)  ->  (a  ->  c)  ->  a  ->  b;
pt f g x = f (g x);

flip :: (a  ->  b  ->  c)  ->  b  ->  a  ->  c;
flip f x y = f y x;

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

primMinusInt :: MyInt  ->  MyInt  ->  MyInt;
primMinusInt (Pos x) (Neg y) = Pos (primPlusNat x y);
primMinusInt (Neg x) (Pos y) = Neg (primPlusNat x y);
primMinusInt (Neg x) (Neg y) = primMinusNat y x;
primMinusInt (Pos x) (Pos y) = primMinusNat x y;

msMyInt :: MyInt  ->  MyInt  ->  MyInt
msMyInt = primMinusInt;

subtractMyInt :: MyInt  ->  MyInt  ->  MyInt
subtractMyInt = flip msMyInt;

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

predMyBool :: MyBool  ->  MyBool
predMyBool = pt toEnumMyBool (pt (subtractMyInt (Pos (Succ Zero))) fromEnumMyBool);

