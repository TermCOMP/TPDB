{-# htermination (rangeSizeOrdering :: Tup2 Ordering Ordering  ->  MyInt) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data MyInt = Pos Nat  | Neg Nat ;

data Nat = Succ Nat  | Zero ;

data Ordering = LT  | EQ  | GT ;

data WHNF a = WHNF a ;

null :: (List a)  ->  MyBool;
null Nil = MyTrue;
null (Cons vx vy) = MyFalse;

foldr :: (b  ->  a  ->  a)  ->  a  ->  (List b)  ->  a;
foldr f z Nil = z;
foldr f z (Cons x xs) = f x (foldr f z xs);

psPs :: (List a)  ->  (List a)  ->  (List a);
psPs Nil ys = ys;
psPs (Cons x xs) ys = Cons x (psPs xs ys);

concat :: (List (List a))  ->  (List a);
concat = foldr psPs Nil;

map :: (a  ->  b)  ->  (List a)  ->  (List b);
map f Nil = Nil;
map f (Cons x xs) = Cons (f x) (map f xs);

pt :: (a  ->  c)  ->  (b  ->  a)  ->  b  ->  c;
pt f g x = f (g x);

concatMap :: (a  ->  (List b))  ->  (List a)  ->  (List b);
concatMap f = pt concat (map f);

asAs :: MyBool  ->  MyBool  ->  MyBool;
asAs MyFalse x = MyFalse;
asAs MyTrue x = x;

compare0 x y MyTrue = GT;

otherwise :: MyBool;
otherwise = MyTrue;

compare1 x y MyTrue = LT;
compare1 x y MyFalse = compare0 x y otherwise;

ltEsOrdering :: Ordering  ->  Ordering  ->  MyBool
ltEsOrdering LT LT = MyTrue;
ltEsOrdering LT EQ = MyTrue;
ltEsOrdering LT GT = MyTrue;
ltEsOrdering EQ LT = MyFalse;
ltEsOrdering EQ EQ = MyTrue;
ltEsOrdering EQ GT = MyTrue;
ltEsOrdering GT LT = MyFalse;
ltEsOrdering GT EQ = MyFalse;
ltEsOrdering GT GT = MyTrue;

compare2 x y MyTrue = EQ;
compare2 x y MyFalse = compare1 x y (ltEsOrdering x y);

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

compare3 x y = compare2 x y (esEsOrdering x y);

compareOrdering :: Ordering  ->  Ordering  ->  Ordering
compareOrdering x y = compare3 x y;

not :: MyBool  ->  MyBool;
not MyTrue = MyFalse;
not MyFalse = MyTrue;

fsEsOrdering :: Ordering  ->  Ordering  ->  MyBool
fsEsOrdering x y = not (esEsOrdering x y);

gtEsOrdering :: Ordering  ->  Ordering  ->  MyBool
gtEsOrdering x y = fsEsOrdering (compareOrdering x y) LT;

range00 z MyTrue = Cons z Nil;
range00 z MyFalse = Nil;

range0 y x z = range00 z (asAs (gtEsOrdering y z) (gtEsOrdering z x));

rangeOrdering :: Tup2 Ordering Ordering  ->  (List Ordering)
rangeOrdering (Tup2 x y) = concatMap (range0 y x) (Cons LT (Cons EQ (Cons GT Nil)));

stop :: MyBool  ->  a;
stop MyFalse = stop MyFalse;

error :: a;
error = stop MyTrue;

gtOrdering :: Ordering  ->  Ordering  ->  MyBool
gtOrdering x y = esEsOrdering (compareOrdering x y) GT;

index00 MyTrue = Pos (Succ Zero);
index00 MyFalse = Pos Zero;

index0 y s = index00 (gtOrdering y s);

enforceWHNF :: WHNF a  ->  b  ->  b;
enforceWHNF (WHNF x) y = y;

seq :: b  ->  a  ->  a;
seq x y = enforceWHNF (WHNF x) y;

dsEm :: (b  ->  a)  ->  b  ->  a;
dsEm f x = seq x (f x);

foldl' :: (a  ->  b  ->  a)  ->  a  ->  (List b)  ->  a;
foldl' f a Nil = a;
foldl' f a (Cons x xs) = dsEm (foldl' f) (f a x) xs;

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

sumMyInt :: (List MyInt)  ->  MyInt
sumMyInt = foldl' psMyInt (fromIntMyInt (Pos Zero));

index1 y x MyTrue = sumMyInt (map (index0 y) (rangeOrdering (Tup2 x y)));
index1 y x MyFalse = error;

indexOrdering :: Tup2 Ordering Ordering  ->  Ordering  ->  MyInt
indexOrdering (Tup2 x y) z = index1 y x (asAs (gtEsOrdering y z) (gtEsOrdering z x));

rangeSize0 vv vw MyTrue = psMyInt (indexOrdering (Tup2 vv vw) vw) (Pos (Succ Zero));

rangeSize1 vv vw MyTrue = Pos Zero;
rangeSize1 vv vw MyFalse = rangeSize0 vv vw otherwise;

rangeSize2 (Tup2 vv vw) = rangeSize1 vv vw (null (rangeOrdering (Tup2 vv vw)));

rangeSizeOrdering :: Tup2 Ordering Ordering  ->  MyInt
rangeSizeOrdering (Tup2 vv vw) = rangeSize2 (Tup2 vv vw);

