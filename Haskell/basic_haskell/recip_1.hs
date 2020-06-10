{-# htermination (recip :: Ratio MyInt  ->  Ratio MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

data Ratio a = CnPc a a;

recip :: Ratio MyInt -> Ratio MyInt;
recip (CnPc x y) = CnPc y x;

