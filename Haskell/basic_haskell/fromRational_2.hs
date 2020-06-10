{-# htermination (fromRationalFloat :: Ratio Integer  ->  Float) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Float = Float MyInt MyInt ;

data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

data Ratio a = CnPc a a;

rationalToFloat :: Ratio Integer  ->  Float;
rationalToFloat (CnPc (Integer x) (Integer y)) = Float x y;

primRationalToFloat :: Ratio Integer  ->  Float;
primRationalToFloat = rationalToFloat;

fromRationalFloat :: Ratio Integer  ->  Float
fromRationalFloat = primRationalToFloat;

