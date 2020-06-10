{-# htermination (pred :: Ratio MyInt  ->  Ratio MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data Double = Double MyInt MyInt ;

data Float = Float MyInt MyInt ;

data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ratio a = CnPc a a;


dot :: (b -> c) -> (a -> b) -> a -> c;
dot f g x = f (g x);

pred :: Ratio MyInt -> Ratio MyInt;
pred = dot toEnumRatioMyInt (dot (subtract (Pos (Succ Zero))) fromEnumRatioMyInt);


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

primMinusInt :: MyInt  ->  MyInt  ->  MyInt;
primMinusInt (Pos x) (Neg y) = Pos (primPlusNat x y);
primMinusInt (Neg x) (Pos y) = Neg (primPlusNat x y);
primMinusInt (Neg x) (Neg y) = primMinusNat y x;
primMinusInt (Pos x) (Pos y) = primMinusNat x y;


subtract :: MyInt -> MyInt -> MyInt;
subtract x y = primMinusInt y x;


fromEnumRatioMyInt :: Ratio MyInt -> MyInt;
fromEnumRatioMyInt = truncate;

truncate :: Ratio MyInt -> MyInt;
truncate x = fst (properFraction x);

fst :: Tup2 a b -> a;
fst (Tup2 x _) = x;

snd :: Tup2 a b -> b;
snd (Tup2 _ y) = y;

properFraction :: Ratio MyInt -> Tup2 MyInt (Ratio MyInt);
properFraction (CnPc x y) = Tup2 (qProperFraction x y) (CnPc (rProperFraction x y) y);


qProperFraction :: MyInt -> MyInt -> MyInt;
qProperFraction x y = fst (quotRemMyInt x y);

rProperFraction :: MyInt -> MyInt -> MyInt;
rProperFraction x y = snd (quotRemMyInt x y);



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
primQuotInt vx vy = error;

primModNatS0 x y MyTrue = primModNatS (primMinusNatS x (Succ y)) (Succ (Succ y));
primModNatS0 x y MyFalse = Succ x;

primModNatS :: Nat  ->  Nat  ->  Nat;
primModNatS Zero Zero = error;
primModNatS Zero (Succ x) = Zero;
primModNatS (Succ x) Zero = error;
primModNatS (Succ x) (Succ Zero) = Zero;
primModNatS (Succ x) (Succ (Succ y)) = primModNatS0 x y (primGEqNatS x (Succ y));

primRemInt :: MyInt  ->  MyInt  ->  MyInt;
primRemInt (Pos x) (Pos (Succ y)) = Pos (primModNatS x (Succ y));
primRemInt (Pos x) (Neg (Succ y)) = Pos (primModNatS x (Succ y));
primRemInt (Neg x) (Pos (Succ y)) = Neg (primModNatS x (Succ y));
primRemInt (Neg x) (Neg (Succ y)) = Neg (primModNatS x (Succ y));
primRemInt vv vw = error;

primQrmInt :: MyInt  ->  MyInt  ->  Tup2 MyInt MyInt;
primQrmInt x y = Tup2 (primQuotInt x y) (primRemInt x y);

quotRemMyInt :: MyInt  ->  MyInt  ->  Tup2 MyInt MyInt;
quotRemMyInt = primQrmInt;






toEnumRatioMyInt :: MyInt -> Ratio MyInt;
toEnumRatioMyInt = fromIntRatioMyInt;


fromIntRatioMyInt :: MyInt -> Ratio MyInt;
fromIntRatioMyInt x = CnPc x (Pos Zero);

