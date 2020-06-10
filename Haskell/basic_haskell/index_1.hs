{-# htermination (indexTup0 :: Tup2 Tup0 Tup0  ->  Tup0  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data Tup2 a b = Tup2 a b ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

indexTup0 :: Tup2 Tup0 Tup0  ->  Tup0  ->  MyInt
indexTup0 (Tup2 Tup0 Tup0) Tup0 = Pos Zero;

