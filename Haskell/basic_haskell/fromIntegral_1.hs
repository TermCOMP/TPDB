{-# htermination (fromIntegral :: MyInt  ->  Ratio MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ratio a = CnPc a a;

fromIntMyInt :: MyInt  ->  MyInt
fromIntMyInt x = x;

fromIntegerMyInt :: Integer  ->  MyInt
fromIntegerMyInt (Integer x) = x;

fromIntegerRatio :: Integer  ->  Ratio MyInt
fromIntegerRatio x = CnPc (fromIntegerMyInt x) (fromIntMyInt (Pos (Succ Zero)));

pt :: (b  ->  c)  ->  (a  ->  b)  ->  a  ->  c;
pt f g x = f (g x);

toIntegerMyInt :: MyInt  ->  Integer
toIntegerMyInt x = Integer x;

fromIntegral = pt fromIntegerRatio toIntegerMyInt;

