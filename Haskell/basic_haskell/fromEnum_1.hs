{-# htermination (fromEnumTup0 :: Tup0  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

fromEnumTup0 :: Tup0  ->  MyInt
fromEnumTup0 Tup0 = Pos Zero;

