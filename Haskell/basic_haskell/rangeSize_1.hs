{-# htermination (rangeSizeTup0 :: Tup2 Tup0 Tup0  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup0 = Tup0 ;

data Tup2 a b = Tup2 a b ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

null :: (List a)  ->  MyBool;
null Nil = MyTrue;
null (Cons vx vy) = MyFalse;

otherwise :: MyBool;
otherwise = MyTrue;

indexTup0 :: Tup2 Tup0 Tup0  ->  Tup0  ->  MyInt
indexTup0 (Tup2 Tup0 Tup0) Tup0 = Pos Zero;

primMinusNat :: Nat  ->  Nat  ->  MyInt;
primMinusNat Zero Zero = Pos Zero;
primMinusNat Zero (Succ y) = Neg (Succ y);
primMinusNat (Succ x) Zero = Pos (Succ x);
primMinusNat (Succ x) (Succ y) = primMinusNat x y;

primPlusNat :: Nat  ->  Nat  ->  Nat;
primPlusNat Zero Zero = Zero;
primPlusNat Zero (Succ y) = Succ y;
primPlusNat (Succ x) Zero = Succ x;
primPlusNat (Succ x) (Succ y) = Succ (Succ (primPlusNat x y));

primPlusInt :: MyInt  ->  MyInt  ->  MyInt;
primPlusInt (Pos x) (Neg y) = primMinusNat x y;
primPlusInt (Neg x) (Pos y) = primMinusNat y x;
primPlusInt (Neg x) (Neg y) = Neg (primPlusNat x y);
primPlusInt (Pos x) (Pos y) = Pos (primPlusNat x y);

psMyInt :: MyInt  ->  MyInt  ->  MyInt
psMyInt = primPlusInt;

rangeSize0 vv vw MyTrue = psMyInt (indexTup0 (Tup2 vv vw) vw) (Pos (Succ Zero));

rangeSize1 vv vw MyTrue = Pos Zero;
rangeSize1 vv vw MyFalse = rangeSize0 vv vw otherwise;

rangeTup0 :: Tup2 Tup0 Tup0  ->  (List Tup0)
rangeTup0 (Tup2 Tup0 Tup0) = Cons Tup0 Nil;

rangeSize2 (Tup2 vv vw) = rangeSize1 vv vw (null (rangeTup0 (Tup2 vv vw)));

rangeSizeTup0 :: Tup2 Tup0 Tup0  ->  MyInt
rangeSizeTup0 (Tup2 vv vw) = rangeSize2 (Tup2 vv vw);

