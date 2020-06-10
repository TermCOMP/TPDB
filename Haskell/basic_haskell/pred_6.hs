{-# htermination (predMyInt :: MyInt  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

predMyInt :: MyInt  ->  MyInt
predMyInt (Pos Zero) = Neg (Succ Zero);
predMyInt (Neg Zero) = Neg (Succ Zero);
predMyInt (Pos (Succ x)) = Pos x;
predMyInt (Neg (Succ x)) = Neg (Succ (Succ x));

