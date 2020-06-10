{-# htermination (succOrdering :: Ordering  ->  Ordering) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

fromEnumOrdering :: Ordering  ->  MyInt
fromEnumOrdering LT = Pos Zero;
fromEnumOrdering EQ = Pos (Succ Zero);
fromEnumOrdering GT = Pos (Succ (Succ Zero));

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

pt :: (c  ->  b)  ->  (a  ->  c)  ->  a  ->  b;
pt f g x = f (g x);

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

succOrdering :: Ordering  ->  Ordering
succOrdering = pt toEnumOrdering (pt (psMyInt (Pos (Succ Zero))) fromEnumOrdering);

