{-# htermination (toEnumMyInt :: MyInt  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

id :: a  ->  a;
id x = x;

toEnumMyInt :: MyInt  ->  MyInt
toEnumMyInt = id;

