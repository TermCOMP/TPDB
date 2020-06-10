{-# htermination (realToFrac :: Ratio MyInt  ->  Float) #-} 
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

pt :: (c  ->  b)  ->  (a  ->  c)  ->  a  ->  b;
pt f g x = f (g x);

toIntegerMyInt :: MyInt  ->  Integer
toIntegerMyInt x = Integer x;

toRational (CnPc x y) = CnPc (toIntegerMyInt x) (toIntegerMyInt y);

realToFrac = pt fromRationalFloat toRational;

