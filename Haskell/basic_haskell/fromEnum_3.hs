{-# htermination (fromEnumMyBool :: MyBool  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

fromEnumMyBool :: MyBool  ->  MyInt
fromEnumMyBool MyFalse = Pos Zero;
fromEnumMyBool MyTrue = Pos (Succ Zero);

