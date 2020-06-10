{-# htermination (maxBoundMyInt :: MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

primMaxInt :: MyInt;
primMaxInt = primMaxInt;

maxBoundMyInt :: MyInt
maxBoundMyInt = primMaxInt;

