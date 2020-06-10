{-# htermination (toEnumRatio :: MyInt  ->  Ratio MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ratio a = CnPc a a;

fromIntMyInt :: MyInt  ->  MyInt
fromIntMyInt x = x;

intToRatio x = CnPc (fromIntMyInt x) (fromIntMyInt (Pos (Succ Zero)));

fromIntRatio :: MyInt  ->  Ratio MyInt
fromIntRatio = intToRatio;

toEnumRatio :: MyInt  ->  Ratio MyInt
toEnumRatio = fromIntRatio;

