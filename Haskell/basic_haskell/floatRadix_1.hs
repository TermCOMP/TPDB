{-# htermination (floatRadixFloat :: Float  ->  Integer) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Float = Float MyInt MyInt ;

data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

fromIntInteger :: MyInt  ->  Integer
fromIntInteger x = Integer x;

primFloatRadix :: Integer;
primFloatRadix = fromIntInteger (Pos (Succ (Succ Zero)));

floatRadixFloat :: Float  ->  Integer
floatRadixFloat vv = primFloatRadix;

