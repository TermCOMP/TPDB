{-# htermination (predChar :: Char  ->  Char) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Char = Char MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

primCharToInt :: Char  ->  MyInt;
primCharToInt (Char x) = x;

fromEnumChar :: Char  ->  MyInt
fromEnumChar = primCharToInt;

pt :: (c  ->  b)  ->  (a  ->  c)  ->  a  ->  b;
pt f g x = f (g x);

flip :: (c  ->  b  ->  a)  ->  b  ->  c  ->  a;
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

primIntToChar :: MyInt  ->  Char;
primIntToChar x = Char x;

toEnumChar :: MyInt  ->  Char
toEnumChar = primIntToChar;

predChar :: Char  ->  Char
predChar = pt toEnumChar (pt (subtractMyInt (Pos (Succ Zero))) fromEnumChar);

