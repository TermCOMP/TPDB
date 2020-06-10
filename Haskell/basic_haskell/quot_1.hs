{-# htermination (quotMyInt :: MyInt  ->  MyInt  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

stop :: MyBool  ->  a;
stop MyFalse = stop MyFalse;

error :: a;
error = stop MyTrue;

primMinusNatS :: Nat  ->  Nat  ->  Nat;
primMinusNatS (Succ x) (Succ y) = primMinusNatS x y;
primMinusNatS Zero (Succ y) = Zero;
primMinusNatS x Zero = x;

primDivNatS0 x y MyTrue = Succ (primDivNatS (primMinusNatS x y) (Succ y));
primDivNatS0 x y MyFalse = Zero;

primGEqNatS :: Nat  ->  Nat  ->  MyBool;
primGEqNatS (Succ x) Zero = MyTrue;
primGEqNatS (Succ x) (Succ y) = primGEqNatS x y;
primGEqNatS Zero (Succ x) = MyFalse;
primGEqNatS Zero Zero = MyTrue;

primDivNatS :: Nat  ->  Nat  ->  Nat;
primDivNatS Zero Zero = error;
primDivNatS (Succ x) Zero = error;
primDivNatS (Succ x) (Succ y) = primDivNatS0 x y (primGEqNatS x y);
primDivNatS Zero (Succ x) = Zero;

primQuotInt :: MyInt  ->  MyInt  ->  MyInt;
primQuotInt (Pos x) (Pos (Succ y)) = Pos (primDivNatS x (Succ y));
primQuotInt (Pos x) (Neg (Succ y)) = Neg (primDivNatS x (Succ y));
primQuotInt (Neg x) (Pos (Succ y)) = Neg (primDivNatS x (Succ y));
primQuotInt (Neg x) (Neg (Succ y)) = Pos (primDivNatS x (Succ y));
primQuotInt vv vw = error;

quotMyInt :: MyInt  ->  MyInt  ->  MyInt
quotMyInt = primQuotInt;

