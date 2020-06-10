{-# htermination (fromIntegerMyInt :: Integer  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

fromIntegerMyInt :: Integer  ->  MyInt
fromIntegerMyInt (Integer x) = x;

