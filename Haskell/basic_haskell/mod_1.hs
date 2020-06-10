{-# htermination (modMyInt :: MyInt  ->  MyInt  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

stop :: MyBool  ->  a;
stop MyFalse = stop MyFalse;

error :: a;
error = stop MyTrue;

primGEqNatS :: Nat  ->  Nat  ->  MyBool;
primGEqNatS (Succ x) Zero = MyTrue;
primGEqNatS (Succ x) (Succ y) = primGEqNatS x y;
primGEqNatS Zero (Succ x) = MyFalse;
primGEqNatS Zero Zero = MyTrue;

primMinusNatS :: Nat  ->  Nat  ->  Nat;
primMinusNatS (Succ x) (Succ y) = primMinusNatS x y;
primMinusNatS Zero (Succ y) = Zero;
primMinusNatS x Zero = x;

primModNatP0 x y MyTrue = primModNatP (primMinusNatS x (Succ y)) (Succ (Succ y));
primModNatP0 x y MyFalse = primMinusNatS (Succ y) x;

primModNatP :: Nat  ->  Nat  ->  Nat;
primModNatP Zero Zero = error;
primModNatP Zero (Succ x) = Zero;
primModNatP (Succ x) Zero = error;
primModNatP (Succ x) (Succ Zero) = Zero;
primModNatP (Succ x) (Succ (Succ y)) = primModNatP0 x y (primGEqNatS x y);

primModNatS0 x y MyTrue = primModNatS (primMinusNatS x (Succ y)) (Succ (Succ y));
primModNatS0 x y MyFalse = Succ x;

primModNatS :: Nat  ->  Nat  ->  Nat;
primModNatS Zero Zero = error;
primModNatS Zero (Succ x) = Zero;
primModNatS (Succ x) Zero = error;
primModNatS (Succ x) (Succ Zero) = Zero;
primModNatS (Succ x) (Succ (Succ y)) = primModNatS0 x y (primGEqNatS x (Succ y));

primModInt :: MyInt  ->  MyInt  ->  MyInt;
primModInt (Pos x) (Pos (Succ y)) = Pos (primModNatS x (Succ y));
primModInt (Pos x) (Neg (Succ y)) = Neg (primModNatP x (Succ y));
primModInt (Neg x) (Pos (Succ y)) = Pos (primModNatP x (Succ y));
primModInt (Neg x) (Neg (Succ y)) = Neg (primModNatS x (Succ y));
primModInt vv vw = error;

modMyInt :: MyInt  ->  MyInt  ->  MyInt
modMyInt = primModInt;

