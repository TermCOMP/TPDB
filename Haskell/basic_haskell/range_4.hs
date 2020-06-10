{-# htermination (rangeOrdering :: Tup2 Ordering Ordering  ->  (List Ordering)) #-} 
import qualified Prelude 
data MyBool = MyTrue | MyFalse 
data List a = Cons a (List a) | Nil 
data Tup2 a b = Tup2 a b ;

data Ordering = LT  | EQ  | GT ;

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

concatMap :: (b  ->  (List a))  ->  (List b)  ->  (List a);
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

