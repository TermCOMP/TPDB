{-# htermination (fromIntegerFloat :: Integer  ->  Float) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Float = Float MyInt MyInt ;

data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

primIntToFloat :: MyInt  ->  Float;
primIntToFloat x = Float x (Pos (Succ Zero));

primIntegerToFloat :: Integer  ->  Float;
primIntegerToFloat (Integer x) = primIntToFloat x;

fromIntegerFloat :: Integer  ->  Float
fromIntegerFloat = primIntegerToFloat;

