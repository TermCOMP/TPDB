{-# htermination (fromRational :: Ratio Integer  ->  Ratio MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

data Ratio a = CnPc a a;


fromInteger :: Integer -> MyInt;
fromInteger (Integer x) = x;

fromRational :: Ratio Integer -> Ratio MyInt;
fromRational (CnPc x y) = CnPc (fromInteger x) (fromInteger y);

