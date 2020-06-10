{-# htermination (srFloat :: Float  ->  Float  ->  Float) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Float = Float MyInt MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

primPlusNat :: Nat  ->  Nat  ->  Nat;
primPlusNat Zero Zero = Zero;
primPlusNat Zero (Succ y) = Succ y;
primPlusNat (Succ x) Zero = Succ x;
primPlusNat (Succ x) (Succ y) = Succ (Succ (primPlusNat x y));

primMulNat :: Nat  ->  Nat  ->  Nat;
primMulNat Zero Zero = Zero;
primMulNat Zero (Succ y) = Zero;
primMulNat (Succ x) Zero = Zero;
primMulNat (Succ x) (Succ y) = primPlusNat (primMulNat x (Succ y)) (Succ y);

primMulInt :: MyInt  ->  MyInt  ->  MyInt;
primMulInt (Pos x) (Pos y) = Pos (primMulNat x y);
primMulInt (Pos x) (Neg y) = Neg (primMulNat x y);
primMulInt (Neg x) (Pos y) = Neg (primMulNat x y);
primMulInt (Neg x) (Neg y) = Pos (primMulNat x y);

srMyInt :: MyInt  ->  MyInt  ->  MyInt
srMyInt = primMulInt;

primMulFloat :: Float  ->  Float  ->  Float;
primMulFloat (Float x1 x2) (Float y1 y2) = Float (srMyInt x1 y1) (srMyInt x2 y2);

srFloat :: Float  ->  Float  ->  Float
srFloat = primMulFloat;

