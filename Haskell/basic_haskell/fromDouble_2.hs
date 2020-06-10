{-# htermination (fromDoubleFloat :: Double  ->  Float) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Double = Double MyInt MyInt ;

data Float = Float MyInt MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

doubleToFloat :: Double  ->  Float;
doubleToFloat (Double x y) = Float x y;

fromDoubleFloat :: Double  ->  Float
fromDoubleFloat = doubleToFloat;

