{-# htermination (fromEnumChar :: Char  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Char = Char MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

primCharToInt :: Char  ->  MyInt;
primCharToInt (Char x) = x;

fromEnumChar :: Char  ->  MyInt
fromEnumChar = primCharToInt;

