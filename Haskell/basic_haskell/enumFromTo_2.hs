{-# htermination (enumFromToRatio :: Ratio MyInt  ->  Ratio MyInt  ->  (List (Ratio MyInt))) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data Integer = Integer MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

data Ratio a = CnPc a a;

data WHNF a = WHNF a ;

flip :: (b  ->  a  ->  c)  ->  a  ->  b  ->  c;
flip f x y = f y x;

primCmpNat :: Nat  ->  Nat  ->  Ordering;
primCmpNat Zero Zero = EQ;
primCmpNat Zero (Succ y) = LT;
primCmpNat (Succ x) Zero = GT;
primCmpNat (Succ x) (Succ y) = primCmpNat x y;

primCmpInt :: MyInt  ->  MyInt  ->  Ordering;
primCmpInt (Pos Zero) (Pos Zero) = EQ;
primCmpInt (Pos Zero) (Neg Zero) = EQ;
primCmpInt (Neg Zero) (Pos Zero) = EQ;
primCmpInt (Neg Zero) (Neg Zero) = EQ;
primCmpInt (Pos x) (Pos y) = primCmpNat x y;
primCmpInt (Pos x) (Neg y) = GT;
primCmpInt (Neg x) (Pos y) = LT;
primCmpInt (Neg x) (Neg y) = primCmpNat y x;

compareMyInt :: MyInt  ->  MyInt  ->  Ordering
compareMyInt = primCmpInt;

esEsOrdering :: Ordering  ->  Ordering  ->  MyBool
esEsOrdering LT LT = MyTrue;
esEsOrdering LT EQ = MyFalse;
esEsOrdering LT GT = MyFalse;
esEsOrdering EQ LT = MyFalse;
esEsOrdering EQ EQ = MyTrue;
esEsOrdering EQ GT = MyFalse;
esEsOrdering GT LT = MyFalse;
esEsOrdering GT EQ = MyFalse;
esEsOrdering GT GT = MyTrue;

not :: MyBool  ->  MyBool;
not MyTrue = MyFalse;
not MyFalse = MyTrue;

fsEsOrdering :: Ordering  ->  Ordering  ->  MyBool
fsEsOrdering x y = not (esEsOrdering x y);

ltEsMyInt :: MyInt  ->  MyInt  ->  MyBool
ltEsMyInt x y = fsEsOrdering (compareMyInt x y) GT;

enforceWHNF :: WHNF b  ->  a  ->  a;
enforceWHNF (WHNF x) y = y;

seq :: a  ->  b  ->  b;
seq x y = enforceWHNF (WHNF x) y;

dsEm :: (b  ->  a)  ->  b  ->  a;
dsEm f x = seq x (f x);

fromIntMyInt :: MyInt  ->  MyInt
fromIntMyInt x = x;

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

numericEnumFrom n = Cons n (dsEm numericEnumFrom (psMyInt n (fromIntMyInt (Pos (Succ Zero)))));

otherwise :: MyBool;
otherwise = MyTrue;

takeWhile0 p x xs MyTrue = Nil;

takeWhile1 p x xs MyTrue = Cons x (takeWhile p xs);
takeWhile1 p x xs MyFalse = takeWhile0 p x xs otherwise;

takeWhile2 p (Cons x xs) = takeWhile1 p x xs (p x);

takeWhile3 p Nil = Nil;
takeWhile3 xw xx = takeWhile2 xw xx;

takeWhile :: (a  ->  MyBool)  ->  (List a)  ->  (List a);
takeWhile p Nil = takeWhile3 p Nil;
takeWhile p (Cons x xs) = takeWhile2 p (Cons x xs);

numericEnumFromTo n m = takeWhile (flip ltEsMyInt m) (numericEnumFrom n);

enumFromToMyInt :: MyInt  ->  MyInt  ->  (List MyInt)
enumFromToMyInt = numericEnumFromTo;

truncateM0 xy (Tup2 m vv) = m;

properFractionQ1 xz yu (Tup2 q vw) = q;

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
primQuotInt ww wx = error;

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
primRemInt vy vz = error;

primQrmInt :: MyInt  ->  MyInt  ->  Tup2 MyInt MyInt;
primQrmInt x y = Tup2 (primQuotInt x y) (primRemInt x y);

quotRemMyInt :: MyInt  ->  MyInt  ->  Tup2 MyInt MyInt
quotRemMyInt = primQrmInt;

properFractionVu30 xz yu = quotRemMyInt xz yu;

properFractionQ xz yu = properFractionQ1 xz yu (properFractionVu30 xz yu);

properFractionR0 xz yu (Tup2 vx r) = r;

properFractionR xz yu = properFractionR0 xz yu (properFractionVu30 xz yu);

properFractionRatio :: Ratio MyInt  ->  Tup2 MyInt (Ratio MyInt)
properFractionRatio (CnPc x y) = Tup2 (properFractionQ x y) (CnPc (properFractionR x y) y);

truncateVu6 xy = properFractionRatio xy;

truncateM xy = truncateM0 xy (truncateVu6 xy);

truncateRatio :: Ratio MyInt  ->  MyInt
truncateRatio x = truncateM x;

fromEnumRatio :: Ratio MyInt  ->  MyInt
fromEnumRatio = truncateRatio;

map :: (b  ->  a)  ->  (List b)  ->  (List a);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

intToRatio x = CnPc (fromIntMyInt x) (fromIntMyInt (Pos (Succ Zero)));

fromIntRatio :: MyInt  ->  Ratio MyInt
fromIntRatio = intToRatio;

toEnumRatio :: MyInt  ->  Ratio MyInt
toEnumRatio = fromIntRatio;

enumFromToRatio :: Ratio MyInt  ->  Ratio MyInt  ->  (List (Ratio MyInt))
enumFromToRatio x y = map toEnumRatio (enumFromToMyInt (fromEnumRatio x) (fromEnumRatio y));

