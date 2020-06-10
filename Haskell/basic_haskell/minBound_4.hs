{-# htermination (minBoundMyInt :: MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat | Zero ;

primMinInt :: MyInt;
primMinInt = primMinInt;

minBoundMyInt :: MyInt
minBoundMyInt = primMinInt;

