{-# htermination (negateFloat :: Float  ->  Float) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Float = Float MyInt MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

primNegInt :: MyInt  ->  MyInt;
primNegInt (Pos x) = Neg x;
primNegInt (Neg x) = Pos x;

negateMyInt :: MyInt  ->  MyInt
negateMyInt = primNegInt;

primNegFloat :: Float  ->  Float;
primNegFloat (Float x1 x2) = Float (negateMyInt x1) x2;

negateFloat :: Float  ->  Float
negateFloat = primNegFloat;

