{-# htermination (toRationalRatio :: Ratio MyInt  ->  Ratio Integer) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

data Ratio a = CnPc a a;

toIntegerMyInt :: MyInt  ->  Integer
toIntegerMyInt x = Integer x;

toRationalRatio :: Ratio MyInt  ->  Ratio Integer
toRationalRatio (CnPc x y) = CnPc (toIntegerMyInt x) (toIntegerMyInt y);

