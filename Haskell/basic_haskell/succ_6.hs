{-# htermination (succMyInt :: MyInt  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

succMyInt :: MyInt  ->  MyInt
succMyInt (Pos Zero) = Pos (Succ Zero);
succMyInt (Neg Zero) = Pos (Succ Zero);
succMyInt (Pos (Succ x)) = Pos (Succ (Succ x));
succMyInt (Neg (Succ x)) = Neg x;

