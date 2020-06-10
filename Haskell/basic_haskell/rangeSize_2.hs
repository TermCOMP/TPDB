{-# htermination (rangeSizeChar :: Tup2 Char Char  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data Char = Char MyInt ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

data WHNF a = WHNF a ;

null :: (List a)  ->  MyBool;
null Nil = MyTrue;
null (Cons vz wu) = MyFalse;

flip :: (b  ->  c  ->  a)  ->  c  ->  b  ->  a;
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

seq :: b  ->  a  ->  a;
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
takeWhile3 wz xu = takeWhile2 wz xu;

takeWhile :: (a  ->  MyBool)  ->  (List a)  ->  (List a);
takeWhile p Nil = takeWhile3 p Nil;
takeWhile p (Cons x xs) = takeWhile2 p (Cons x xs);

numericEnumFromTo n m = takeWhile (flip ltEsMyInt m) (numericEnumFrom n);

enumFromToMyInt :: MyInt  ->  MyInt  ->  (List MyInt)
enumFromToMyInt = numericEnumFromTo;

primCharToInt :: Char  ->  MyInt;
primCharToInt (Char x) = x;

fromEnumChar :: Char  ->  MyInt
fromEnumChar = primCharToInt;

map :: (b  ->  a)  ->  (List b)  ->  (List a);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

primIntToChar :: MyInt  ->  Char;
primIntToChar x = Char x;

toEnumChar :: MyInt  ->  Char
toEnumChar = primIntToChar;

enumFromToChar :: Char  ->  Char  ->  (List Char)
enumFromToChar x y = map toEnumChar (enumFromToMyInt (fromEnumChar x) (fromEnumChar y));

rangeChar :: Tup2 Char Char  ->  (List Char)
rangeChar (Tup2 c c') = enumFromToChar c c';

asAs :: MyBool  ->  MyBool  ->  MyBool;
asAs MyFalse x = MyFalse;
asAs MyTrue x = x;

inRangeI xv = fromEnumChar xv;

inRangeChar :: Tup2 Char Char  ->  Char  ->  MyBool
inRangeChar (Tup2 c c') ci = asAs (ltEsMyInt (fromEnumChar c) (inRangeI ci)) (ltEsMyInt (inRangeI ci) (fromEnumChar c'));

stop :: MyBool  ->  a;
stop MyFalse = stop MyFalse;

error :: a;
error = stop MyTrue;

index0 vx vy ci MyTrue = error;

primMinusInt :: MyInt  ->  MyInt  ->  MyInt;
primMinusInt (Pos x) (Neg y) = Pos (primPlusNat x y);
primMinusInt (Neg x) (Pos y) = Neg (primPlusNat x y);
primMinusInt (Neg x) (Neg y) = primMinusNat y x;
primMinusInt (Pos x) (Pos y) = primMinusNat x y;

msMyInt :: MyInt  ->  MyInt  ->  MyInt
msMyInt = primMinusInt;

index1 vx vy ci MyTrue = msMyInt (fromEnumChar ci) (fromEnumChar vx);
index1 vx vy ci MyFalse = index0 vx vy ci otherwise;

index2 (Tup2 vx vy) ci = index1 vx vy ci (inRangeChar (Tup2 vx vy) ci);

indexChar :: Tup2 Char Char  ->  Char  ->  MyInt
indexChar (Tup2 vx vy) ci = index2 (Tup2 vx vy) ci;

rangeSize0 vv vw MyTrue = psMyInt (indexChar (Tup2 vv vw) vw) (Pos (Succ Zero));

rangeSize1 vv vw MyTrue = Pos Zero;
rangeSize1 vv vw MyFalse = rangeSize0 vv vw otherwise;

rangeSize2 (Tup2 vv vw) = rangeSize1 vv vw (null (rangeChar (Tup2 vv vw)));

rangeSizeChar :: Tup2 Char Char  ->  MyInt
rangeSizeChar (Tup2 vv vw) = rangeSize2 (Tup2 vv vw);

