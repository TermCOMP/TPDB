{-# htermination (evenMyInt :: MyInt  ->  MyBool) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

primEvenNat :: Nat  ->  MyBool;
primEvenNat Zero = MyTrue;
primEvenNat (Succ Zero) = MyFalse;
primEvenNat (Succ (Succ x)) = primEvenNat x;

primEvenInt :: MyInt  ->  MyBool;
primEvenInt (Pos x) = primEvenNat x;
primEvenInt (Neg x) = primEvenNat x;

evenMyInt :: MyInt  ->  MyBool
evenMyInt = primEvenInt;

