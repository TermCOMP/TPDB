{-# htermination (realToFrac :: Ratio MyInt  ->  Ratio MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

data Ratio a = CnPc a a;

fromIntegerMyInt :: Integer  ->  MyInt
fromIntegerMyInt (Integer x) = x;

fromRational (CnPc x y) = CnPc (fromIntegerMyInt x) (fromIntegerMyInt y);

pt :: (c  ->  a)  ->  (b  ->  c)  ->  b  ->  a;
pt f g x = f (g x);

toIntegerMyInt :: MyInt  ->  Integer
toIntegerMyInt x = Integer x;

toRational (CnPc x y) = CnPc (toIntegerMyInt x) (toIntegerMyInt y);

realToFrac = pt fromRational toRational;

