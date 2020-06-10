{-# htermination (divMyInt :: MyInt  ->  MyInt  ->  MyInt) #-} 
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

primDivNatP :: Nat  ->  Nat  ->  Nat;
primDivNatP Zero Zero = error;
primDivNatP (Succ x) Zero = error;
primDivNatP (Succ x) (Succ y) = Succ (primDivNatP (primMinusNatS x y) (Succ y));
primDivNatP Zero (Succ x) = Zero;

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

primDivInt :: MyInt  ->  MyInt  ->  MyInt;
primDivInt (Pos x) (Pos (Succ y)) = Pos (primDivNatS x (Succ y));
primDivInt (Pos x) (Neg (Succ y)) = Neg (primDivNatP x (Succ y));
primDivInt (Neg x) (Pos (Succ y)) = Neg (primDivNatP x (Succ y));
primDivInt (Neg x) (Neg (Succ y)) = Pos (primDivNatS x (Succ y));
primDivInt vv vw = error;

divMyInt :: MyInt  ->  MyInt  ->  MyInt
divMyInt = primDivInt;

