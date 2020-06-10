{-# htermination (failMaybe :: (List Char)  ->  Maybe a) #-} 
import qualified Prelude 
data MyInt = Pos Nat  | Neg Nat ;
data Nat = Succ Nat  | Zero ;
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Char = Char MyInt ;

data Maybe a = Nothing  | Just a ;

failMaybe :: (List Char)  ->  Maybe b
failMaybe s = Nothing;

