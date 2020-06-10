{-# htermination (maximumChar :: (List Char)  ->  Char) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Char = Char MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

foldl :: (b  ->  a  ->  b)  ->  b  ->  (List a)  ->  b;
foldl f z Nil = z;
foldl f z (Cons x xs) = foldl f (f z x) xs;

foldl1 :: (a  ->  a  ->  a)  ->  (List a)  ->  a;
foldl1 f (Cons x xs) = foldl f x xs;

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

primCmpChar :: Char  ->  Char  ->  Ordering;
primCmpChar (Char x) (Char y) = primCmpInt x y;

compareChar :: Char  ->  Char  ->  Ordering
compareChar = primCmpChar;

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

ltEsChar :: Char  ->  Char  ->  MyBool
ltEsChar x y = fsEsOrdering (compareChar x y) GT;

max0 x y MyTrue = x;

otherwise :: MyBool;
otherwise = MyTrue;

max1 x y MyTrue = y;
max1 x y MyFalse = max0 x y otherwise;

max2 x y = max1 x y (ltEsChar x y);

maxChar :: Char  ->  Char  ->  Char
maxChar x y = max2 x y;

maximumChar :: (List Char)  ->  Char
maximumChar = foldl1 maxChar;

