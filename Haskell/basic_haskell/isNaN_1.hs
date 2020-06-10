{-# htermination (isNaNFloat :: Float  ->  MyBool) #-} 
import qualified Prelude 
data MyInt = Pos Nat  | Neg Nat ;
data Nat = Succ Nat  | Zero ;
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Float = Float MyInt MyInt ;

isNaNFloat :: Float  ->  MyBool
isNaNFloat vv = MyFalse;

